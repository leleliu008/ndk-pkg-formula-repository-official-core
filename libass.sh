summary "Subtitle renderer for the ASS/SSA subtitle format"
webpage "https://github.com/libass/libass"
src_url "https://github.com/libass/libass/releases/download/0.14.0/libass-0.14.0.tar.xz"
src_sum "881f2382af48aead75b7a0e02e65d88c5ebd369fe46bc77d9270a94aa8fd38a2"
license "ISC"
depends "freetype2 fribidi harfbuzz"

build() {
    configure
}
