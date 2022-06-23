pkg_set summary "Software library to render fonts"
pkg_set webpage "https://www.freetype.org"
pkg_set git.url "https://gitlab.freedesktop.org/freetype/freetype.git"
pkg_set src.url "https://downloads.sourceforge.net/project/freetype/freetype2/2.12.1/freetype-2.12.1.tar.xz"
pkg_set src.sha "4766f20157cc4cf0cd292f80bf917f92d1c439b243ac3018debf6b9140c41a7f"
pkg_set license "FTL"
pkg_set dep.pkg "brotli bzip2 libpng harfbuzz"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DFT_WITH_BROTLI=ON \
        -DFT_WITH_BZIP2=ON \
        -DFT_WITH_ZLIB=ON \
        -DFT_WITH_PNG=ON \
        -DFT_WITH_HARFBUZZ=ON
}
