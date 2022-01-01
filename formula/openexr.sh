package set summary "High dynamic-range image file format"
package set webpage "https://www.openexr.com/"
package set git.url "https://github.com/AcademySoftwareFoundation/openexr.git"
package set src.url "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.3.tar.gz"
package set src.sum "6f70a624d1321319d8269a911c4032f24950cde52e76f46e9ecbebfcb762f28c"
package set license "BSD-3-Clause"
package set dep.cmd "pkg-config"
package set dep.pkg "imath zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DDOCS=OFF \
        -DOPENEXR_INSTALL=ON \
        -DOPENEXR_INSTALL_TOOLS=ON \
        -DOPENEXR_INSTALL_EXAMPLES=ON \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
