pkg_set summary "Minimalistic client for Redis"
pkg_set git.url "https://github.com/redis/hiredis.git"
pkg_set src.url "https://github.com/redis/hiredis/archive/v1.0.2.tar.gz"
pkg_set src.sha "e0ab696e2f07deb4252dda45b703d09854e53b9703c7d52182ce5a22616c3819"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew -DDISABLE_TESTS=ON
}
