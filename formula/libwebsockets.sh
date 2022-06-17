pkg_set summary "C websockets server library"
pkg_set webpage "https://libwebsockets.org"
pkg_set git.url "https://github.com/warmcat/libwebsockets.git"
pkg_set src.url "https://github.com/warmcat/libwebsockets/archive/refs/tags/v4.3.2.tar.gz"
pkg_set src.sha "6a85a1bccf25acc7e8e5383e4934c9b32a102880d1e4c37c70b27ae2a42406e1"
pkg_set license "MIT"
pkg_set dep.pkg "zlib libevent libuv"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

prepare() {
    sed_in_place 's|include(LwsCheckRequirements)|include(${LWS_CMAKE_DIR}/LwsCheckRequirements.cmake)|' cmake/libwebsockets-config.cmake.in
}

build() {
    cmakew \
        -DLWS_IPV6=ON \
        -DLWS_UNIX_SOCK=ON \
        -DLWS_WITH_HTTP2=ON \
        -DLWS_WITH_LIBUV=ON \
        -DLWS_WITH_MBEDTLS=OFF \
        -DLWS_WITH_LIBEVENT=ON \
        -DLWS_WITH_PLUGINS=ON \
        -DLWS_WITHOUT_TESTAPPS=ON \
        -DLWS_OPENSSL_SUPPORT=ON \
        -DLWS_BUILD_HASH=no_hash
}
