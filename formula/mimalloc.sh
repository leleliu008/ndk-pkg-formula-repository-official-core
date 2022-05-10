pkg_set summary "Compact general purpose allocator"
pkg_set git.url "https://github.com/microsoft/mimalloc.git"
pkg_set src.url "https://github.com/microsoft/mimalloc/archive/refs/tags/v1.7.6.tar.gz"
pkg_set src.sha "d74f86ada2329016068bc5a243268f1f555edd620b6a7d6ce89295e7d6cf18da"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DMI_BUILD_TESTS=OFF \
        -DMI_INSTALL_TOPLEVEL=ON
}
