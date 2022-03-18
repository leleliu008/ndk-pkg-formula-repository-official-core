package set summary "OpenGL and OpenGL ES reference compiler for shading languages"
package set webpage "https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/"
package set git.url "https://github.com/KhronosGroup/glslang.git"
package set src.url "https://github.com/KhronosGroup/glslang/archive/11.8.0.tar.gz"
package set src.sum "9e5fbe5b844d203da5e61bcd84eda76326e0ff5dc696cb862147bbe01d2febb0"
package set license "BSD-3-Clause GPL-3.0-or-later MIT Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_EXTERNAL=OFF \
        -DENABLE_CTEST=OFF
}
