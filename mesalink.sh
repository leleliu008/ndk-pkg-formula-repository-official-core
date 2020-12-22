summary  "memory-safe and OpenSSL-compatible TLS library"
homepage "https://mesalink.io"
url      "https://github.com/mesalock-linux/mesalink.git"
requirements "cargo"

build() {
    cargo mesalink/*.h mesalink/openssl/*.h:openssl libmesalink.a libmesalink.so
}
