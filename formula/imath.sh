pkg_set summary "Library of 2D and 3D vector, matrix, and math operations"
pkg_set webpage "https://www.openexr.com/"
pkg_set git.url "https://github.com/AcademySoftwareFoundation/Imath.git"
pkg_set src.url "https://github.com/AcademySoftwareFoundation/Imath/archive/refs/tags/v3.1.4.tar.gz"
pkg_set src.sha "fcca5fbb37d375a252bacd8a29935569bdc28b888f01ef1d9299ca0c9e87c17a"
pkg_set license "BSD-3-Clause;LICENSE.md;https://raw.githubusercontent.com/AcademySoftwareFoundation/Imath/main/LICENSE.md"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DPYTHON=OFF \
        -DDOCS=OFF
}
