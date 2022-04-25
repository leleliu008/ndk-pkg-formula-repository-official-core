pkg_set summary "High dynamic-range image file format"
pkg_set webpage "https://www.openexr.com/"
pkg_set git.url "https://github.com/AcademySoftwareFoundation/openexr.git"
pkg_set src.url "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.4.tar.gz"
pkg_set src.sha "cb019c3c69ada47fe340f7fa6c8b863ca0515804dc60bdb25c942c1da886930b"
pkg_set license "BSD-3-Clause;LICENSE.md;https://raw.githubusercontent.com/AcademySoftwareFoundation/openexr/main/LICENSE.md"
pkg_set dep.pkg "imath zlib"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DDOCS=OFF \
        -DOPENEXR_INSTALL=ON \
        -DOPENEXR_INSTALL_TOOLS=ON \
        -DOPENEXR_INSTALL_EXAMPLES=ON
}
