pkg_set summary "OpenGL and OpenGL ES reference compiler for shading languages"
pkg_set webpage "https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/"
pkg_set git.url "https://github.com/KhronosGroup/glslang.git"
pkg_set src.url "https://github.com/KhronosGroup/glslang/archive/11.9.0.tar.gz"
pkg_set src.sha "d5744adba19eef9ad3d73f524226b39fec559d94cb582cd442e3c5de930004b2"
pkg_set license "BSD-3-Clause GPL-3.0-or-later MIT Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_EXTERNAL=OFF \
        -DENABLE_CTEST=OFF
}
