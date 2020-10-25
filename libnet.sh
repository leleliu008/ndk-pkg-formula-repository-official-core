summary="C library for creating IP packets"
homepage="https://github.com/sam-github/libnet"
url="https://github.com/libnet/libnet/releases/download/v1.2/libnet-1.2.tar.gz"
sha256="caa4868157d9e5f32e9c7eac9461efeff30cb28357f7f6bf07e73933fb4edaa7"
license="BSD-2-Clause"

# int   getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);

build() {
    configure --enable-samples
}
