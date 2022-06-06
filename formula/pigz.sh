pkg_set summary "Parallel gzip"
pkg_set webpage "https://zlib.net/pigz/"
pkg_set git.url "https://github.com/madler/pigz.git"
pkg_set src.url "https://zlib.net/pigz/pigz-2.7.tar.gz"
pkg_set src.sha "b4c9e60344a08d5db37ca7ad00a5b2c76ccb9556354b722d56d55ca7e8b1c707"
pkg_set license "Zlib"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|ln -f|ln -sf|' Makefile
}

build() {
    gmakew clean &&
    gmakew CC=$CC CFLAGS="'$CFLAGS'" LDFLAGS="'$LDFLAGS -pie -fPIE'" &&
    install_bins pigz &&
    install_mans pigz.1 &&
    cd "$TARGET_INSTALL_DIR/bin" &&
    ln -sf pigz unpigz &&
    cd "$TARGET_INSTALL_DIR/share/man/man1" &&
    ln -sf pigz.1 unpigz.1
}
