package set summary "Color management solution geared towards motion picture production"
package set webpage "https://opencolorio.org/"
package set license "BSD-3-Clause"
package set src.git "https://github.com/AcademySoftwareFoundation/OpenColorIO.git"
package set src.url "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.1.0.tar.gz"
package set src.sum "81fc7853a490031632a69c73716bc6ac271b395e2ba0e2587af9995c2b0efb5f"
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
        -DOCIO_WARNING_AS_ERROR=OFF \
        -Dpystring_INCLUDE_DIR="$pystring_INCLUDE_DIR" \
        -Dpystring_LIBRARY="$pystring_LIBRARY_DIR/libpystring.a"
}
