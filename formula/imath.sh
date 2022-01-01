package set summary "Library of 2D and 3D vector, matrix, and math operations"
package set webpage "https://www.openexr.com/"
package set git.url "https://github.com/AcademySoftwareFoundation/Imath.git"
package set src.url "https://github.com/AcademySoftwareFoundation/Imath/archive/refs/tags/v3.1.3.tar.gz"
package set src.sum "0bf7ec51162c4d17a4c5b850fb3f6f7a195cff9fa71f4da7735f74d7b5124320"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DPYTHON=OFF \
        -DDOCS=OFF
}
