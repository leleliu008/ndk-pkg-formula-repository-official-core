package set summary "Library for encoding and decoding .avif files"
package set git.url "https://github.com/AOMediaCodec/libavif.git"
package set src.url "https://github.com/AOMediaCodec/libavif/archive/refs/tags/v0.9.3.tar.gz"
package set src.sum "bcd9a1f57f982a9615eb7e2faf87236dc88eb1d0c886f3471c7440ead605060d"
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
