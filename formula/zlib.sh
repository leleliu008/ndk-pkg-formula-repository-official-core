package set summary "General-purpose lossless data-compression library"
package set webpage "https://zlib.net"
package set git.url "https://github.com/madler/zlib.git"
package set src.url "https://zlib.net/zlib-1.2.12.tar.gz"
package set src.sum "91844808532e5ce316b3c010929493c0244f3d37593afd6de04f71821d5136d9"
package set license "Zlib"
package set bsystem "cmake"

prepare() {
    sed_in_place 's|/share/pkgconfig|/lib/pkgconfig|' CMakeLists.txt
}
