summary "Dynamic analysis tools (memory, debug, profiling)"
webpage "https://www.valgrind.org"
src_url "https://sourceware.org/pub/valgrind/valgrind-3.16.1.tar.bz2"
src_sum "c91f3a2f7b02db0f3bc99479861656154d241d2fdb265614ba918cc6720a33ca"
license "GPL-2.0"

build() {
    configure --enable-lto --enable-tls
}
