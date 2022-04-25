pkg_set summary "Netwide Assembler (NASM) is an 80x86 assembler"
pkg_set webpage "https://www.nasm.us"
pkg_set src.url "https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.xz"
pkg_set src.sha "3caf6729c1073bf96629b57cee31eeb54f4f8129b01902c73428836550b30a3f"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-profiling \
        --enable-lto \
        --enable-sanitizer \
        --enable-suggestions \
        --disable-pedantic \
        --disable-werror \
        --disable-pdf-compression
}
