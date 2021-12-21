package set summary "Physics SDK"
package set webpage "https://bulletphysics.org/"
package set src.git "https://github.com/bulletphysics/bullet3.git"
package set src.url "https://github.com/bulletphysics/bullet3/archive/3.21.tar.gz"
package set src.sum "49d1ee47aa8cbb0bc6bb459f0a4cfb9579b40e28f5c7d9a36c313e3031fb3965"
package set license "Zlib"
package set dep.cmd "pkg-config python3:python"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_UNIT_TESTS=OFF \
        -DBUILD_CPU_DEMOS=OFF \
        -DBUILD_BULLET2_DEMOS=OFF \
        -DBUILD_EXTRAS=OFF \
        -DINSTALL_LIBS=ON \
        -DINSTALL_EXTRA_LIBS=ON
}
