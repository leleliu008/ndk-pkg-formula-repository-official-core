pkg_set summary "C library for creating IP packets"
pkg_set git.url "https://github.com/libnet/libnet.git"
pkg_set src.url "https://github.com/libnet/libnet/releases/download/v1.2/libnet-1.2.tar.gz"
pkg_set src.sha "caa4868157d9e5f32e9c7eac9461efeff30cb28357f7f6bf07e73933fb4edaa7"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "configure"

# int   getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
pkg_set sdk.api 24

build() {
    configure --enable-samples
}
