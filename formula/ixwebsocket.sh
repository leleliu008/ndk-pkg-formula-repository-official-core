package set summary "WebSocket client and server, and HTTP client command-line tool"
package set git.url "https://github.com/machinezone/IXWebSocket.git"
package set src.url "https://github.com/machinezone/IXWebSocket/archive/refs/tags/v11.3.2.tar.gz"
package set src.sum "07d5e9f4cf492069c39c3953fbb3700a9cf8ec8949343998888e54ef37b03223"
package set license "BSD-3-Clause"
package set dep.pkg "openssl zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DUSE_TLS=ON \
        -DUSE_OPEN_SSL=ON \
        -DIXWEBSOCKET_INSTALL=ON
}
