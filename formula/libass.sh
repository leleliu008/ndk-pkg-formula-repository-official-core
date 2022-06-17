pkg_set summary "Subtitle renderer for the ASS/SSA subtitle format"
pkg_set git.url "https://github.com/libass/libass.git"
pkg_set src.url "https://github.com/libass/libass/releases/download/0.16.0/libass-0.16.0.tar.xz"
pkg_set src.sha "5dbde9e22339119cf8eed59eea6c623a0746ef5a90b689e68a090109078e3c08"
pkg_set license "ISC"
pkg_set dep.pkg "fontconfig fribidi freetype2-with-harfbuzz"
pkg_set dep.cmd "pkg-config nasm>=2.10"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-large-tiles \
        --disable-asm
}
