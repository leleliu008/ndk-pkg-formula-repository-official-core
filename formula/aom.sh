package set summary "Codec library for encoding and decoding AV1 video streams"
package set webpage "https://aomedia.googlesource.com/aom"
package set git.url "https://github.com/jbeich/aom.git"
package set src.url "https://github.com/jbeich/aom/archive/refs/tags/v3.2.0.tar.gz"
package set src.sum "ef49182f99f73c231e650211584a80fdedd6ab319be06b3fad4ffcb56dbc3627"
package set license "BSD-2-Clause"
package set dep.cmd "yasm"
package set dep.pkg "libjxl libvmaf"
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
