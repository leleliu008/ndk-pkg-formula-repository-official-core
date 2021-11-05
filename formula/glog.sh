package set summary "Application-level logging library"
package set src.git "https://github.com/google/glog.git"
package set src.url "https://github.com/google/glog/archive/v0.5.0.tar.gz"
package set src.sum "eede71f28371bf39aa69b45de23b329d37214016e2055269b3b5e7cfd40b59f5"
package set license "BSD-3-Clause"
package set dep.pkg "gflags"
package set bsystem "cmake"

build() {
    cmakew \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON
}
