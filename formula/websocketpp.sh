package set summary "C++ websocket client/server library"
package set webpage "https://www.zaphoyd.com/projects/websocketpp/"
package set git.url "https://github.com/zaphoyd/websocketpp.git"
package set src.url "https://github.com/zaphoyd/websocketpp/archive/refs/tags/0.8.2.tar.gz"
package set src.sum "6ce889d85ecdc2d8fa07408d6787e7352510750daa66b5ad44aacb47bea76755"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_TESTS=OFF \
        -DBUILD_EXAMPLES=OFF
}
