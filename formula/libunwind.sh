package set summary "C API for determining the call-chain of a program"
package set webpage "https://www.nongnu.org/libunwind"
package set src.url "https://download.savannah.nongnu.org/releases/libunwind/libunwind-1.6.2.tar.gz"
package set src.sum "4a6aec666991fb45d0889c44aede8ad6eb108071c3554fcdff671f9c94794976"
package set license "MIT"
package set dep.pkg "xz zlib"
package set bsystem "configure"

build() {
    configure --disable-tests --disable-coredump
}
