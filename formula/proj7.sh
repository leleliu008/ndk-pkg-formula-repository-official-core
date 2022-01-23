package set summary "Cartographic Projections Library"
package set webpage "https://proj.org/"
package set src.url "https://github.com/OSGeo/PROJ/releases/download/7.2.1/proj-7.2.1.tar.gz"
package set src.sum "b384f42e5fb9c6d01fe5fa4d31da2e91329668863a684f97be5d4760dbbf0a14"
package set license "MIT"
package set dep.pkg "libtiff curl sqlite"
package set dep.cmd "sqlite3"
package set bsystem "cmake"

build() {
    cmakew \
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so"
}