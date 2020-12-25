summary "memory-safe and OpenSSL-compatible TLS library"
webpage "https://mesalink.io"
src_url "https://github.com/mesalock-linux/mesalink.git"
require "cargo"

build() {
    cargo mesalink/*.h mesalink/openssl/*.h:openssl libmesalink.a libmesalink.so
}
