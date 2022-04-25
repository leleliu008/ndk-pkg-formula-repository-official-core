pkg_set summary "Portable UPnP development kit"
pkg_set webpage "https://pupnp.sourceforge.io/"
pkg_set git.url "https://github.com/pupnp/pupnp.git"
pkg_set src.url "https://github.com/pupnp/pupnp/releases/download/release-1.14.12/libupnp-1.14.12.tar.bz2"
pkg_set src.sha "091c80aada1e939c2294245c122be2f5e337cc932af7f7d40504751680b5b5ac"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
pkg_set sdk.api 24

build() {
    cmakew -Dopen_ssl=ON
}
