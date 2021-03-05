summary "Yet another assembler, a complete reimplementation of NASM"
webpage "https://yasm.tortall.net"
src_url "https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz"
src_sum "3dce6601b495f5b3d45b59f7d2492a340ee7e84b5beca17e48f862502bd5603f"
bsystem "configure"

build() {
    configure \
        --disable-gcov \
        --disable-warnerror \
        --disable-profiling \
        --disable-python \
        --disable-python-bindings \
        --without-dmalloc
}
