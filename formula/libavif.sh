pkg_set summary "Library for encoding and decoding .avif files"
pkg_set git.url "https://github.com/AOMediaCodec/libavif.git"
pkg_set src.url "https://github.com/AOMediaCodec/libavif/archive/refs/tags/v0.10.1.tar.gz"
pkg_set src.sha "66e82854ceb84a3e542bc140a343bc90e56c68f3ecb4fff63e636c136ed9a05e"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "aom"
pkg_set dep.cmd "nasm"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DAVIF_ENABLE_WERROR=ON \
        -DAVIF_CODEC_AOM=ON \
        -DAVIF_CODEC_AOM_DECODE=ON \
        -DAVIF_CODEC_AOM_ENCODE=ON \
        -DAVIF_BUILD_APPS=ON \
        -DAVIF_BUILD_TESTS=OFF \
        -DAVIF_BUILD_EXAMPLES=OFF
}
