summary  "Get a file from an HTTP, HTTPS or FTP server"
homepage "https://curl.haxx.se"
url      "https://curl.haxx.se/download/curl-7.70.0.tar.xz"
sha256   "032f43f2674008c761af19bf536374128c16241fb234699a55f9fb603fcfbae7"
dependencies "openssl"

build() {
    configure --with-ssl="$openssl_INSTALL_DIR"
}
