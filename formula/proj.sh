package set summary "Cartographic Projections Library"
package set webpage "https://proj.org/"
package set src.url "https://github.com/OSGeo/PROJ/releases/download/8.2.0/proj-8.2.0.tar.gz"
package set src.sum "de93df9a4aa88d09459ead791f2dbc874b897bf67a5bbb3e4b68de7b1bdef13c"
package set license "MIT"
package set dep.pkg "libtiff curl sqlite nlohmann-json"
package set dep.cmd "sqlite3"
package set bsystem "cmake"

build() {
    cmakew \
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so"
}
