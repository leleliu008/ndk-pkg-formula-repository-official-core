pkg_set summary "Physics SDK"
pkg_set webpage "https://bulletphysics.org/"
pkg_set git.url "https://github.com/bulletphysics/bullet3.git"
pkg_set src.url "https://github.com/bulletphysics/bullet3/archive/3.24.tar.gz"
pkg_set src.sha "6b1e987d6f8156fa8a6468652f4eaad17b3e11252c9870359e5bca693e35780b"
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
