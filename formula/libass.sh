pkg_set summary "Subtitle renderer for the ASS/SSA subtitle format"
pkg_set git.url "https://github.com/libass/libass.git"
pkg_set src.url "https://github.com/libass/libass/releases/download/0.15.2/libass-0.15.2.tar.xz"
pkg_set src.sha "1be2df9c4485a57d78bb18c0a8ed157bc87a5a8dd48c661961c625cb112832fd"
pkg_set license "ISC"
pkg_set bsystem "configure"
pkg_set dep.cmd "pkg-config nasm>=2.10"
pkg_set dep.pkg "fontconfig fribidi freetype2-with-harfbuzz"

build() {
    configure \
        --enable-large-tiles \
        --disable-asm
}
