package set summary "Subtitle renderer for the ASS/SSA subtitle format"
package set src.git "https://github.com/libass/libass.git"
package set src.url "https://github.com/libass/libass/releases/download/0.15.0/libass-0.15.0.tar.xz"
package set src.sum "9f09230c9a0aa68ef7aa6a9e2ab709ca957020f842e52c5b2e52b801a7d9e833"
package set license "ISC"
package set bsystem "configure"
package set dep.pkg "fontconfig fribidi freetype2-with-harfbuzz"

build() {
    configure --enable-large-tiles
}
