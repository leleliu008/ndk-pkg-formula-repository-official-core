pkg_set summary "Physics SDK"
pkg_set webpage "https://bulletphysics.org/"
pkg_set git.url "https://github.com/bulletphysics/bullet3.git"
pkg_set src.url "https://github.com/bulletphysics/bullet3/archive/3.21.tar.gz"
pkg_set src.sha "49d1ee47aa8cbb0bc6bb459f0a4cfb9579b40e28f5c7d9a36c313e3031fb3965"
pkg_set license "Zlib"
pkg_set dep.cmd "pkg-config python3:python"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_UNIT_TESTS=OFF \
        -DBUILD_CPU_DEMOS=OFF \
        -DBUILD_BULLET2_DEMOS=OFF \
        -DBUILD_EXTRAS=OFF \
        -DINSTALL_LIBS=ON \
        -DINSTALL_EXTRA_LIBS=ON
}
