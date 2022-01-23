package set summary "High-performance, asynchronous messaging library"
package set webpage "https://zeromq.org/"
package set git.url "https://github.com/zeromq/libzmq.git"
package set src.url "https://github.com/zeromq/libzmq/releases/download/v4.3.4/zeromq-4.3.4.tar.gz"
package set src.sum "c593001a89f5a85dd2ddf564805deb860e02471171b3f204944857336295c3e5"
package set license "LGPL-3.0-or-later"
package set dep.pkg "libsodium"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure --with-libsodium --disable-libunwind
}
