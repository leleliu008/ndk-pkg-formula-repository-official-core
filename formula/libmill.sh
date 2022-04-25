pkg_set summary "Go-style concurrency in C"
pkg_set git.url "https://github.com/sustrik/libmill.git"
pkg_set license "MIT"
pkg_set bsystem "cmake"

# ifaddrs.h: int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
pkg_set sdk.api 24
