package set summary "OpenGL and OpenGL ES reference compiler for shading languages"
package set webpage "https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/"
package set git.url "https://github.com/KhronosGroup/glslang.git"
package set src.url "https://github.com/KhronosGroup/glslang/archive/11.9.0.tar.gz"
package set src.sum "d5744adba19eef9ad3d73f524226b39fec559d94cb582cd442e3c5de930004b2"
package set license "BSD-3-Clause GPL-3.0-or-later MIT Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_EXTERNAL=OFF \
        -DENABLE_CTEST=OFF
}
