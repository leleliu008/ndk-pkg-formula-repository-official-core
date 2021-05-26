package set summary "Yet another assembler, a complete reimplementation of NASM"
package set webpage "https://yasm.tortall.net"
package set src.url "https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz"
package set src.sum "3dce6601b495f5b3d45b59f7d2492a340ee7e84b5beca17e48f862502bd5603f"
package set bsystem "configure"

build() {
    configure \
        --disable-gcov \
        --disable-warnerror \
        --disable-profiling \
        --disable-python \
        --disable-python-bindings \
        --without-dmalloc
}
