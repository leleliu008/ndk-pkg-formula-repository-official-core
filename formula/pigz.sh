package set summary "Parallel gzip"
package set webpage "https://zlib.net/pigz/"
package set git.url "https://github.com/madler/pigz.git"
package set src.url "https://zlib.net/pigz/pigz-2.7.tar.gz"
package set src.sum "b4c9e60344a08d5db37ca7ad00a5b2c76ccb9556354b722d56d55ca7e8b1c707"
package set license "Zlib"
package set bsystem "make"
package set binsrcd "yes"

prepare() {
    sed_in_place 's|-lpthread||' Makefile
    sed_in_place 's|ln -f|ln -sf|' Makefile
}

build() {
    makew clean &&
    makew CC=$CC CFLAGS="'$CFLAGS'" LDFLAGS="'$LDFLAGS -pie -fPIE'" &&
    install_bins pigz &&
    install_mans pigz.1 &&
    cd "$ABI_INSTALL_DIR/bin" &&
    ln -sf pigz unpigz &&
    cd "$ABI_INSTALL_DIR/share/man/man1" &&
    ln -sf pigz.1 unpigz.1
}
