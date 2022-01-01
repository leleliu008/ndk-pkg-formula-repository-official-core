package set summary "Validating, recursive, caching DNS resolver"
package set webpage "https://www.unbound.net"
package set git.url "https://github.com/NLnetLabs/unbound.git"
package set src.url "https://nlnetlabs.nl/downloads/unbound/unbound-1.13.2.tar.gz"
package set src.sum "0a13b547f3b92a026b5ebd0423f54c991e5718037fd9f72445817f6a040e1a83"
package set license "BSD-3-Clause"
package set dep.pkg "openssl libmnl libevent expat nghttp2"
package set dep.cmd "glibtoolize:libtoolize"
package set bsystem "configure"

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
        --with-libnghttp2="$nghttp2_INSTALL_DIR" \
        ac_cv_prog_AR="$AR"
}
