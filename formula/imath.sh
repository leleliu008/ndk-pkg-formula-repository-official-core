pkg_set summary "Library of 2D and 3D vector, matrix, and math operations"
pkg_set webpage "https://www.openexr.com/"
pkg_set git.url "https://github.com/AcademySoftwareFoundation/Imath.git"
pkg_set src.url "https://github.com/AcademySoftwareFoundation/Imath/archive/refs/tags/v3.1.5.tar.gz"
pkg_set src.sha "1e9c7c94797cf7b7e61908aed1f80a331088cc7d8873318f70376e4aed5f25fb"
pkg_set license "BSD-3-Clause|LICENSE.md|https://raw.githubusercontent.com/AcademySoftwareFoundation/Imath/main/LICENSE.md"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DPYTHON=OFF \
        -DDOCS=OFF
}
