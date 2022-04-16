package set summary "Library for encoding and decoding .avif files"
package set git.url "https://github.com/AOMediaCodec/libavif.git"
package set src.url "https://github.com/AOMediaCodec/libavif/archive/refs/tags/v0.10.1.tar.gz"
package set src.sum "66e82854ceb84a3e542bc140a343bc90e56c68f3ecb4fff63e636c136ed9a05e"
package set license "BSD-2-Clause"
package set dep.pkg "aom"
package set dep.cmd "nasm"
package set bsystem "cmake"

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
