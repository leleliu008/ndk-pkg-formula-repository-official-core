pkg_set summary "Yet another assembler, a complete reimplementation of NASM"
pkg_set webpage "https://yasm.tortall.net"
pkg_set git.url "https://github.com/yasm/yasm.git"
pkg_set src.url "http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz"
pkg_set src.sha "3dce6601b495f5b3d45b59f7d2492a340ee7e84b5beca17e48f862502bd5603f"
pkg_set license "|COPYING|https://raw.githubusercontent.com/yasm/yasm/master/COPYING"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-gcov \
        --disable-warnerror \
        --disable-profiling \
        --disable-python \
        --disable-python-bindings \
        --without-dmalloc
}
