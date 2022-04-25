pkg_set summary "Structured concurrency in C"
pkg_set webpage "http://libdill.org/"
pkg_set git.url "https://github.com/sustrik/libdill.git"
pkg_set src.url "https://github.com/sustrik/libdill/archive/2.14.tar.gz"
pkg_set src.sha "ebba0e5b433ec123b74a57d49b89dfa673aa258e03e6a452959e556b4c4529b9"
pkg_set license "MIT"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

# ifaddrs.h: int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
pkg_set sdk.api 24
pkg_set ccflags "-fno-asynchronous-unwind-tables"
