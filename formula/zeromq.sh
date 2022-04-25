pkg_set summary "High-performance, asynchronous messaging library"
pkg_set webpage "https://zeromq.org/"
pkg_set git.url "https://github.com/zeromq/libzmq.git"
pkg_set src.url "https://github.com/zeromq/libzmq/releases/download/v4.3.4/zeromq-4.3.4.tar.gz"
pkg_set src.sha "c593001a89f5a85dd2ddf564805deb860e02471171b3f204944857336295c3e5"
pkg_set license "LGPL-3.0-or-later"
pkg_set dep.pkg "libsodium"
pkg_set dep.cmd "libtoolize:glibtoolize"
pkg_set bsystem "configure"

build() {
    configure --with-libsodium
}
