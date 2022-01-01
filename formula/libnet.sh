package set summary "C library for creating IP packets"
package set git.url "https://github.com/libnet/libnet.git"
package set src.url "https://github.com/libnet/libnet/releases/download/v1.2/libnet-1.2.tar.gz"
package set src.sum "caa4868157d9e5f32e9c7eac9461efeff30cb28357f7f6bf07e73933fb4edaa7"
package set license "BSD-2-Clause"
package set bsystem "configure"

# int   getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24

build() {
    configure --enable-samples
}
