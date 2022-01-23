package set summary "Portable UPnP development kit"
package set webpage "https://pupnp.sourceforge.io/"
package set git.url "https://github.com/pupnp/pupnp.git"
package set src.url "https://github.com/pupnp/pupnp/releases/download/release-1.14.12/libupnp-1.14.12.tar.bz2"
package set src.sum "091c80aada1e939c2294245c122be2f5e337cc932af7f7d40504751680b5b5ac"
package set license "BSD-3-Clause"
package set dep.pkg "openssl"
package set bsystem "cmake"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24

build() {
    cmakew -Dopen_ssl=ON
}
