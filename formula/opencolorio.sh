package set summary "Color management solution geared towards motion picture production"
package set webpage "https://opencolorio.org/"
package set license "BSD-3-Clause"
package set git.url "https://github.com/AcademySoftwareFoundation/OpenColorIO.git"
package set src.url "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.1.1.tar.gz"
package set src.sum "16ebc3e0f21f72dbe90fe60437eb864f4d4de9c255ef8e212f837824fc9b8d9c"
package set dep.pkg "imath lcms2 expat yaml-cpp pystring"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

prepare() {
    sed_in_place '/rindex/d' "$COMMON_INCLUDE_H_FILEPATH"
}

build() {
    cmakew \
        -DOCIO_BUILD_APPS=ON \
        -DOCIO_BUILD_DOCS=OFF \
        -DOCIO_BUILD_TESTS=OFF \
        -DOCIO_BUILD_JAVA=OFF \
        -DOCIO_BUILD_PYTHON=OFF \
        -DOCIO_WARNING_AS_ERROR=OFF
}
