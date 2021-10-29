package set summary "Minimalistic client for Redis"
package set src.git "https://github.com/redis/hiredis.git"
package set src.url "https://github.com/redis/hiredis/archive/v1.0.2.tar.gz"
package set src.sum "e0ab696e2f07deb4252dda45b703d09854e53b9703c7d52182ce5a22616c3819"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DDISABLE_TESTS=ON
}
