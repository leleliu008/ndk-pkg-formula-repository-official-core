package set summary "C websockets server library"
package set webpage "https://libwebsockets.org"
package set git.url "https://github.com/warmcat/libwebsockets.git"
package set src.url "https://github.com/warmcat/libwebsockets/archive/refs/tags/v4.3.1.tar.gz"
package set src.sum "8fdb1454a1b34cd9a6351beaab237a485e6853806101de7e62bd2bc250bb50af"
package set license "MIT"
package set dep.pkg "zlib mbedtls libevent libuv"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DLWS_IPV6=ON \
        -DLWS_UNIX_SOCK=ON \
        -DLWS_WITH_HTTP2=ON \
        -DLWS_WITH_MBEDTLS=ON \
        -DLWS_WITH_LIBEVENT=ON \
        -DLWS_WITH_LIBUV=ON \
        -DLWS_WITH_PLUGINS=ON \
        -DLWS_WITHOUT_TESTAPPS=ON \
        -DLWS_OPENSSL_SUPPORT=OFF \
        -DLWS_BUILD_HASH=no_hash
}
