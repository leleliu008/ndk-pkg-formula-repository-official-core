summary "Validating, recursive, caching DNS resolver"
webpage "https://www.unbound.net"
src_git "https://github.com/NLnetLabs/unbound.git"
src_url "https://nlnetlabs.nl/downloads/unbound/unbound-1.12.0.tar.gz"
src_sum "5b9253a97812f24419bf2e6b3ad28c69287261cf8c8fa79e3e9f6d3bf7ef5835"
license "BSD-3-Clause"
bsystem "configure"
require "libtoolize libtool"
depends "openssl libmnl libevent expat nghttp2"

build() {
    configure \
        --disable-systemd \
        --disable-gost \
        --enable-flto \
        --enable-pie \
        --enable-event-api \
        --with-pthreads \
        --with-ssl="$openssl_INSTALL_DIR" \
        --with-libmnl="$libmnl_INSTALL_DIR" \
        --with-libevent="$libevent_INSTALL_DIR" \
        --with-libexpat="$expat_INSTALL_DIR" \
        --with-libnghttp2="$nghttp2_INSTALL_DIR"
}
