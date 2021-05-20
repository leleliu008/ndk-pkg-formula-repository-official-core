package set summary "General-purpose lossless data-compression library"
package set webpage "https://zlib.net"
package set src.url "https://zlib.net/zlib-1.2.11.tar.gz"
package set src.sum "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1"
package set license "Zlib"
package set bsystem "cmake"

prepare() {
    sed_in_place 's|/share/pkgconfig|/lib/pkgconfig|' CMakeLists.txt
}
