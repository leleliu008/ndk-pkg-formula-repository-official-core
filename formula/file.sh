package set summary "Utility to determine file types"
package set webpage "https://www.darwinsys.com/file"
package set git.url "https://github.com/file/file.git"
package set src.url "https://astron.com/pub/file/file-5.41.tar.gz"
package set src.sum "13e532c7b364f7d57e23dfeea3147103150cb90593a57af86c10e4f6e411603f"
package set license "BSD-2-Clause"
package set bsystem "configure"

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
