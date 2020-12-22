summary  "Dynamic analysis tools (memory, debug, profiling)"
homepage "https://www.valgrind.org"
url      "https://sourceware.org/pub/valgrind/valgrind-3.16.1.tar.bz2"
sha256   "c91f3a2f7b02db0f3bc99479861656154d241d2fdb265614ba918cc6720a33ca"
license  "GPL-2.0"

build() {
    configure --enable-lto --enable-tls
}
