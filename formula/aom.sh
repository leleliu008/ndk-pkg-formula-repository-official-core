pkg_set summary "Codec library for encoding and decoding AV1 video streams"
pkg_set webpage "https://aomedia.googlesource.com/aom"
pkg_set git.url "https://github.com/jbeich/aom.git"
pkg_set src.url "https://github.com/jbeich/aom/archive/refs/tags/v3.4.0.tar.gz"
pkg_set src.sha "831ff8d1fe379beb2074722dd6bef253a2444965c2784a267ffab9183163e700"
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
