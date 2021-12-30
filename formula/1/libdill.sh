package set summary "Structured concurrency in C"
package set webpage "http://libdill.org/"
package set src.git "https://github.com/sustrik/libdill.git"
package set src.url "https://github.com/sustrik/libdill/archive/2.14.tar.gz"
package set src.sum "ebba0e5b433ec123b74a57d49b89dfa673aa258e03e6a452959e556b4c4529b9"
package set license "MIT"
package set dep.pkg "openssl"
package set bsystem "cmake"

# ifaddrs.h: int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
package set sdk.api 24
package set ccflags "-fno-asynchronous-unwind-tables"
