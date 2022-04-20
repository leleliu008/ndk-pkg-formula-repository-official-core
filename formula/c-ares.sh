package set summary "Asynchronous DNS library"
package set webpage "https://c-ares.haxx.se"
package set git.url "https://github.com/c-ares/c-ares.git"
package set src.url "https://c-ares.haxx.se/download/c-ares-1.18.1.tar.gz"
package set src.sum "1a7d52a8a84a9fbffb1be9133c0f6e17217d91ea5a6fa61f6b4729cda78ebbcf"
package set license ";LICENSE.md;https://raw.githubusercontent.com/c-ares/c-ares/main/LICENSE.md"
package set bsystem "configure"

build() {
    configure \
        --enable-warnings \
        --disable-werror \
        --disable-tests \
        --disable-code-coverage \
        --disable-libgcc
}
