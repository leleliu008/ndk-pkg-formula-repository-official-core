pkg_set summary "C API for determining the call-chain of a program"
pkg_set webpage "https://www.nongnu.org/libunwind"
pkg_set git.url "https://github.com/libunwind/libunwind.git"
pkg_set src.url "https://download.savannah.nongnu.org/releases/libunwind/libunwind-1.6.2.tar.gz"
pkg_set src.sha "4a6aec666991fb45d0889c44aede8ad6eb108071c3554fcdff671f9c94794976"
pkg_set license "MIT"
pkg_set dep.pkg "xz zlib"
pkg_set bsystem "configure"

build() {
    configure --disable-tests --disable-coredump
}
