package set summary "High dynamic-range image file format"
package set webpage "https://www.openexr.com/"
package set git.url "https://github.com/AcademySoftwareFoundation/openexr.git"
package set src.url "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.4.tar.gz"
package set src.sum "cb019c3c69ada47fe340f7fa6c8b863ca0515804dc60bdb25c942c1da886930b"
package set license "BSD-3-Clause"
package set dep.pkg "imath zlib"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DDOCS=OFF \
        -DOPENEXR_INSTALL=ON \
        -DOPENEXR_INSTALL_TOOLS=ON \
        -DOPENEXR_INSTALL_EXAMPLES=ON
}
