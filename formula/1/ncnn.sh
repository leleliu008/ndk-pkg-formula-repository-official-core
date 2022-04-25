pkg_set summary "High-performance neural network inference framework"
pkg_set git.url "https://github.com/Tencent/ncnn.git"
pkg_set src.url "https://github.com/Tencent/ncnn/archive/refs/tags/20220216.tar.gz"
pkg_set src.sha "3c1e6155f37292b5b908f8538cb0791a8b4d9cbc9c508b5ff69e41f106e2a372"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "glslang"
pkg_set bsystem "cmake"

# https://github.com/Tencent/ncnn/wiki/how-to-build#build-for-android
pkg_set sdk.api 24

prepare() {
    sed_in_place 's|glslang/glslang|glslang|' src/gpu.cpp
}

build() {
    cmakew \
        -DNCNN_BUILD_BENCHMARK=OFF \
        -DNCNN_BUILD_EXAMPLES=OFF \
        -DNCNN_SYSTEM_GLSLANG=ON \
        -DGLSLANG_TARGET_DIR=$glslang_LIBRARY_DIR/cmake \
        -DNCNN_VULKAN=ON
}
