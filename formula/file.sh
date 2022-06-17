pkg_set summary "Utility to determine file types"
pkg_set webpage "https://www.darwinsys.com/file"
pkg_set git.url "https://github.com/file/file.git"
pkg_set src.url "https://astron.com/pub/file/file-5.42.tar.gz"
pkg_set src.sha "c076fb4d029c74073f15c43361ef572cfb868407d347190ba834af3b1639b0e4"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "zlib"
pkg_set bsystem "configure"

build0() {
    configure
}

build() {
    export PATH="$NATIVE_INSTALL_DIR/bin:$PATH"
    configure \
        --enable-zlib \
        --disable-bzlib \
        --disable-xzlib
}
