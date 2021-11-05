package set summary "Parallel gzip"
package set webpage "https://zlib.net/pigz/"
package set src.git "https://github.com/madler/pigz.git"
package set src.url "https://zlib.net/pigz/pigz-2.6.tar.gz"
package set src.sum "2eed7b0d7449d1d70903f2a62cd6005d262eb3a8c9e98687bc8cbb5809db2a7d"
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
