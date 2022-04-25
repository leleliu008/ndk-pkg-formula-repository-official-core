pkg_set summary "C++ websocket client/server library"
pkg_set webpage "https://www.zaphoyd.com/projects/websocketpp/"
pkg_set git.url "https://github.com/zaphoyd/websocketpp.git"
pkg_set src.url "https://github.com/zaphoyd/websocketpp/archive/refs/tags/0.8.2.tar.gz"
pkg_set src.sha "6ce889d85ecdc2d8fa07408d6787e7352510750daa66b5ad44aacb47bea76755"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_TESTS=OFF \
        -DBUILD_EXAMPLES=OFF
}
