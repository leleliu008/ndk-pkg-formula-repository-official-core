package set summary "Library for encoding and decoding .avif files"
package set git.url "https://github.com/AOMediaCodec/libavif.git"
package set src.url "https://github.com/AOMediaCodec/libavif/archive/refs/tags/v0.10.0.tar.gz"
package set src.sum "d289e5029cb3853630ca85716b25b5fb9cdec51f8bd537b05f43b3325b480ab0"
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
