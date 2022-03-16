package set summary "Codec library for encoding and decoding AV1 video streams"
package set webpage "https://aomedia.googlesource.com/aom"
package set git.url "https://github.com/jbeich/aom.git"
package set src.url "https://github.com/jbeich/aom/archive/refs/tags/v3.3.0.tar.gz"
package set src.sum "298ced1f5aeed8f7c4e21138eeb646b19486e9c6e2d711640f4ae5822ad330c1"
package set license "BSD-2-Clause"
package set dep.pkg "libjxl libvmaf"
package set dep.cmd "yasm"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DOCS=OFF \
        -DENABLE_TESTS=OFF \
        -DENABLE_TESTDATA=OFF \
        -DENABLE_TOOLS=ON \
        -DENABLE_EXAMPLES=ON \
        -DCONFIG_RUNTIME_CPU_DETECT=0
}
