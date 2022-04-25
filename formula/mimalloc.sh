pkg_set summary "Compact general purpose allocator"
pkg_set git.url "https://github.com/microsoft/mimalloc.git"
pkg_set src.url "https://github.com/microsoft/mimalloc/archive/refs/tags/v1.7.2.tar.gz"
pkg_set src.sha "b1912e354565a4b698410f7583c0f83934a6dbb3ade54ab7ddcb1569320936bd"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DMI_BUILD_TESTS=OFF \
        -DMI_INSTALL_TOPLEVEL=ON &&
    run install -d "$TARGET_INSTALL_DIR/lib/cmake/mimalloc" &&
    run mv     "$TARGET_INSTALL_DIR/cmake/*" "$TARGET_INSTALL_DIR/lib/cmake/mimalloc" &&
    run rm -rf "$TARGET_INSTALL_DIR/cmake"
}
