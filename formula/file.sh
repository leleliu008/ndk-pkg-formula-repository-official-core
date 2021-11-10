package set summary "Utility to determine file types"
package set webpage "https://www.darwinsys.com/file"
package set src.git "https://github.com/file/file.git"
package set src.url "https://astron.com/pub/file/file-5.39.tar.gz"
package set src.sum "f05d286a76d9556243d0cb05814929c2ecf3a5ba07963f8f70bfaaa70517fad1"
package set license "BSD-2-Clause"
package set bsystem "configure"

build0() {
    configure
}

build() {
    export PATH=$NATIVE_INSTALL_DIR/bin:$PATH
    configure \
        --enable-zlib \
        --disable-bzlib \
        --disable-xzlib
}
