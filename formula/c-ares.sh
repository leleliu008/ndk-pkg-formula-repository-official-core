pkg_set summary "Asynchronous DNS library"
pkg_set webpage "https://c-ares.haxx.se"
pkg_set git.url "https://github.com/c-ares/c-ares.git"
pkg_set src.url "https://c-ares.haxx.se/download/c-ares-1.18.1.tar.gz"
pkg_set src.sha "1a7d52a8a84a9fbffb1be9133c0f6e17217d91ea5a6fa61f6b4729cda78ebbcf"
pkg_set license "|LICENSE.md|https://raw.githubusercontent.com/c-ares/c-ares/main/LICENSE.md"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-warnings \
        --disable-werror \
        --disable-tests \
        --disable-code-coverage \
        --disable-libgcc
}
