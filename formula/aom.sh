pkg_set summary "Codec library for encoding and decoding AV1 video streams"
pkg_set webpage "https://aomedia.googlesource.com/aom"
pkg_set git.url "https://github.com/jbeich/aom.git"
pkg_set src.url "https://github.com/jbeich/aom/archive/refs/tags/v3.3.0.tar.gz"
pkg_set src.sha "298ced1f5aeed8f7c4e21138eeb646b19486e9c6e2d711640f4ae5822ad330c1"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "libjxl libvmaf"
pkg_set dep.cmd "yasm"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DOCS=OFF \
        -DENABLE_TESTS=OFF \
        -DENABLE_TESTDATA=OFF \
        -DENABLE_TOOLS=ON \
        -DENABLE_EXAMPLES=ON \
        -DCONFIG_RUNTIME_CPU_DETECT=0
}
