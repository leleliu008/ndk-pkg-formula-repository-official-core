package set summary "Compact general purpose allocator"
package set git.url "https://github.com/microsoft/mimalloc"
package set src.url "https://github.com/microsoft/mimalloc/archive/refs/tags/v1.7.2.tar.gz"
package set src.sum "b1912e354565a4b698410f7583c0f83934a6dbb3ade54ab7ddcb1569320936bd"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DMI_BUILD_TESTS=OFF \
        -DMI_INSTALL_TOPLEVEL=ON &&
    run install -d "$ABI_LIBRARY_DIR/cmake/mimalloc" &&
    run mv "$ABI_INSTALL_DIR/cmake/*" "$ABI_LIBRARY_DIR/cmake/mimalloc" &&
    run rm -rf "$ABI_INSTALL_DIR/cmake"
}
