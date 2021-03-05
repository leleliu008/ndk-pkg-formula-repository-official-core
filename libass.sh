summary "Subtitle renderer for the ASS/SSA subtitle format"
webpage "https://github.com/libass/libass"
src_url "https://github.com/libass/libass/releases/download/0.15.0/libass-0.15.0.tar.xz"
src_sum "9f09230c9a0aa68ef7aa6a9e2ab709ca957020f842e52c5b2e52b801a7d9e833"
license "ISC"
bsystem "configure"
depends "fontconfig fribidi freetype2-with-harfbuzz"

build() {
    configure --enable-large-tiles
}
