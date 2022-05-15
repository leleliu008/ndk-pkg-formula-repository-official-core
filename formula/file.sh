pkg_set summary "Utility to determine file types"
pkg_set webpage "https://www.darwinsys.com/file"
pkg_set git.url "https://github.com/file/file.git"
pkg_set src.url "https://astron.com/pub/file/file-5.41.tar.gz"
pkg_set src.sha "13e532c7b364f7d57e23dfeea3147103150cb90593a57af86c10e4f6e411603f"
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
