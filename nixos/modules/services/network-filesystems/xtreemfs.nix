{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.services.xtreemfs;

  xtreemfs = pkgs.xtreemfs;

  home = "/var/lib/xtreemfs";

  generate_uuid = name: pkgs.runCommand "xtreemfs_${name}_uuid" {} ''
    ${pkgs.utillinux}/bin/uuidgen > $out
  '';

  generate_conf = name: extraConfig: pkgs.runCommand "xtreemfs_${name}_conf" {} ''
    echo "uuid = $(cat ${generate_uuid name})" > $out
    echo "${extraConfig}" >> $out
  '';

  dirScript = pkgs.writeScriptBin "xtreemfs-dir.sh" ''
    #! ${pkgs.stdenv.shell}
    JAVA_HOME="${pkgs.jdk}"
    JAVADIR="${xtreemfs}/share/java"
    JAVA_CALL="$JAVA_HOME/bin/java -ea -cp $JAVADIR/XtreemFS.jar:$JAVADIR/BabuDB.jar:$JAVADIR/Flease.jar:$JAVADIR/protobuf-java-2.5.0.jar:$JAVADIR/Foundation.jar:$JAVADIR/jdmkrt.jar:$JAVADIR/jdmktk.jar:$JAVADIR/commons-codec-1.3.jar"
    $JAVA_CALL org.xtreemfs.dir.DIR ${generate_conf "dir" cfg.dir.extraConfig}
  '';

  mrcScript = pkgs.writeScriptBin "xtreemfs-mrc.sh" ''
    #! ${pkgs.stdenv.shell}
    JAVA_HOME="${pkgs.jdk}"
    JAVADIR="${xtreemfs}/share/java"
    JAVA_CALL="$JAVA_HOME/bin/java -ea -cp $JAVADIR/XtreemFS.jar:$JAVADIR/BabuDB.jar:$JAVADIR/Flease.jar:$JAVADIR/protobuf-java-2.5.0.jar:$JAVADIR/Foundation.jar:$JAVADIR/jdmkrt.jar:$JAVADIR/jdmktk.jar:$JAVADIR/commons-codec-1.3.jar"
    $JAVA_CALL org.xtreemfs.mrc.MRC ${generate_conf "mrc" cfg.mrc.extraConfig}
  '';

  osdScript = pkgs.writeScriptBin "xtreemfs-osd.sh" ''
    #! ${pkgs.stdenv.shell}
    JAVA_HOME="${pkgs.jdk}"
    JAVADIR="${xtreemfs}/share/java"
    JAVA_CALL="$JAVA_HOME/bin/java -ea -cp $JAVADIR/XtreemFS.jar:$JAVADIR/BabuDB.jar:$JAVADIR/Flease.jar:$JAVADIR/protobuf-java-2.5.0.jar:$JAVADIR/Foundation.jar:$JAVADIR/jdmkrt.jar:$JAVADIR/jdmktk.jar:$JAVADIR/commons-codec-1.3.jar"
    $JAVA_CALL org.xtreemfs.osd.OSD ${generate_conf "osd" cfg.osd.extraConfig}
  '';

in

{

  ###### interface

  options = {

    services.xtreemfs = {

      enable = mkOption {
        default = false;
        description = ''
          Whether to enable XtreemFS.
        '';
      };

      dir = {
        enable = mkOption {
          default = true;
          description = ''
            Whether to enable XtreemFS DIR service.
          '';
        };
        extraConfig = mkOption {
          default = ''
            listen.port = 32638
            http_port = 30638
            babudb.baseDir = /var/lib/xtreemfs/dir/database
            babudb.logDir = /var/lib/xtreemfs/dir/db-log
            babudb.sync = FSYNC
          '';
          description = ''
            Configuration of XtreemFS DIR service.
            WARNING: configuration is saved as plaintext inside nix store.
            For more options: http://www.xtreemfs.org/xtfs-guide-1.5.1/index.html
          '';
        };
      };

      mrc = {
        enable = mkOption {
          default = true;
          description = ''
            Whether to enable XtreemFS MRC service.
          '';
        };
        extraConfig = mkOption {
          default = ''
            listen.port = 32636
            http_port = 30636
            osd_check_interval = 300
            dir_service.host = localhost
            dir_service.port = 32638
            no_atime = true
            local_clock_renewal = 0
            remote_time_sync = 30000
            authentication_provider = org.xtreemfs.common.auth.NullAuthProvider
            capability_secret = iNG8UuQJrJ6XVDTe
            babudb.baseDir = /var/lib/xtreemfs/mrc/database
            babudb.logDir = /var/lib/xtreemfs/mrc/db-log
            babudb.sync = FSYNC
          '';
          description = ''
            Configuration of XtreemFS MRC service.
            WARNING: configuration is saved as plaintext inside nix store.
            For more options: http://www.xtreemfs.org/xtfs-guide-1.5.1/index.html
          '';
        };
      };

      osd = {
        enable = mkOption {
          default = true;
          description = ''
            Whether to enable XtreemFS OSD service.
          '';
        };
        extraConfig = mkOption {
          default = ''
            listen.port = 32640
            http_port = 30640
            dir_service.host = localhost
            dir_service.port = 32638
            object_dir = /var/lib/xtreemfs/osd/
            local_clock_renewal = 0
            remote_time_sync = 30000
            report_free_space = true
            capability_secret = iNG8UuQJrJ6XVDTe
          '';
          description = ''
            Configuration of XtreemFS OSD service.
            WARNING: configuration is saved as plaintext inside nix store.
            For more options: http://www.xtreemfs.org/xtfs-guide-1.5.1/index.html
          '';
        };
      };

    };

  };


  ###### implementation

  config = lib.mkIf cfg.enable {

    users.extraUsers.xtreemfs =
      { uid = config.ids.uids.xtreemfs;
        description = "XtreemFS user";
        createHome = true;
        home = home;
      };

    users.extraGroups.xtreemfs =
      { gid = config.ids.gids.xtreemfs;
      };

    systemd.services.xtreemfs-dir = mkIf cfg.dir.enable {
      description = "XtreemFS-DIR Server";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        User = "xtreemfs";
        ExecStart = "${dirScript}/bin/xtreemfs-dir.sh";
      };
    };

    systemd.services.xtreemfs-mrc = mkIf cfg.mrc.enable {
      description = "XtreemFS-MRC Server";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        User = "xtreemfs";
        ExecStart = "${mrcScript}/bin/xtreemfs-mrc.sh";
      };
    };

    systemd.services.xtreemfs-osd = mkIf cfg.osd.enable {
      description = "XtreemFS-OSD Server";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        User = "xtreemfs";
        ExecStart = "${osdScript}/bin/xtreemfs-osd.sh";
      };
    };

  };

}
