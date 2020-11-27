summary  "Terminal multiplexer"
homepage "https://tmux.github.io"
url      "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
sha256   "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"
license  "ISC"
dependencies "ncurses libevent utf8proc"

build() {
    include_stub_getdtablesize &&
    configure --enable-utf8proc
}
