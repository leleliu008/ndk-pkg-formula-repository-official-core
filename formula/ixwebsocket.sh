pkg_set summary "WebSocket client and server, and HTTP client command-line tool"
pkg_set git.url "https://github.com/machinezone/IXWebSocket.git"
pkg_set src.url "https://github.com/machinezone/IXWebSocket/archive/refs/tags/v11.3.2.tar.gz"
pkg_set src.sha "07d5e9f4cf492069c39c3953fbb3700a9cf8ec8949343998888e54ef37b03223"
pkg_set license "BSD-3-Clause;LICENSE.txt;https://raw.githubusercontent.com/machinezone/IXWebSocket/master/LICENSE.txt"
pkg_set dep.pkg "openssl zlib"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DUSE_TLS=ON \
        -DUSE_OPEN_SSL=ON \
        -DIXWEBSOCKET_INSTALL=ON
}
