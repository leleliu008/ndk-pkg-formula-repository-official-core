pkg_set summary "OpenGL and OpenGL ES reference compiler for shading languages"
pkg_set webpage "https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/"
pkg_set git.url "https://github.com/KhronosGroup/glslang.git"
pkg_set src.url "https://github.com/KhronosGroup/glslang/archive/11.10.0.tar.gz"
pkg_set src.sha "8ffc19c435232d09299dd2c91e247292b3508c1b826a3497c60682e4bbf2d602"
pkg_set license "BSD-3-Clause GPL-3.0-or-later MIT Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_EXTERNAL=OFF \
        -DENABLE_CTEST=OFF
}
