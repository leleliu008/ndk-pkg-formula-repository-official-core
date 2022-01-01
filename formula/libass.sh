package set summary "Subtitle renderer for the ASS/SSA subtitle format"
package set git.url "https://github.com/libass/libass.git"
package set src.url "https://github.com/libass/libass/releases/download/0.15.2/libass-0.15.2.tar.xz"
package set src.sum "1be2df9c4485a57d78bb18c0a8ed157bc87a5a8dd48c661961c625cb112832fd"
package set license "ISC"
package set bsystem "configure"
package set dep.cmd "pkg-config nasm>=2.10"
package set dep.pkg "fontconfig fribidi freetype2-with-harfbuzz"

build() {
    configure \
        --enable-large-tiles \
        --disable-asm
}
