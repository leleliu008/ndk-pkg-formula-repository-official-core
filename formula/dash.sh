pkg_set summary "a POSIX-compliant implementation of /bin/sh that aims to be as small as possible"
pkg_set webpage "http://gondor.apana.org.au/~herbert/dash"
pkg_set git.url "https://git.kernel.org/pub/scm/utils/dash/dash.git"
pkg_set src.url "http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.5.tar.gz"
pkg_set src.sha "db778110891f7937985f29bf23410fe1c5d669502760f584e54e0e7b29e123bd"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "libedit libglob libstrchrnul"
pkg_set bsystem "configure"
pkg_set install "exe"
pkg_set sdk.api 31

build() {
    export cross_compiling=yes
    configure \
        --with-libedit="$libedit_INSTALL_DIR" \
        --enable-test-workaround=no \
        --enable-fnmatch \
        --enable-lineno \
        --enable-glob \
        --enable-static=yes
}
