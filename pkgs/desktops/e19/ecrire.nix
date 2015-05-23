{ stdenv, fetchgit, pkgconfig, e19, gettext, automake, autoconf, cmake, systemd }:
stdenv.mkDerivation rec {
  name = "ecrire-${version}";
  version = "20150203";
  src = fetchgit {
    url = "git://git.enlightenment.org/apps/ecrire.git";
    rev = "6e8dc4279905e610fb0851ae872955f88c37637b";
    sha256 = "04h6dl9zm3dmhy3yrhjpvljwrzxw32p8xx6s9k8y8rabm3jp7q6z";
  };
  buildInputs = [ pkgconfig e19.efl gettext automake autoconf cmake systemd ];
  # NIX_CFLAGS_COMPILE = [
    # "-I${e19.efl}/include/ecore-file-1" "-I${e19.efl}/include/ethumb-client-1"
  # ];
  # configurePhase = ''
  #   ./autogen.sh --prefix=$out
  # '';
  installPhase = ''
    # mkdir -p $out/bin
    # cp -r ./src/bin $out/share
    # ln -s $out/share/ecrire $out/bin
    find .
  '';
  meta = {
    description = "This is intended to be a text editor";
    homepage = http://enlightenment.org/;
    maintainers = with stdenv.lib.maintainers; [ matejc ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd3;
  };
}
