pkg_set summary "Application-level logging library"
pkg_set git.url "https://github.com/google/glog.git"
pkg_set src.url "https://github.com/google/glog/archive/v0.5.0.tar.gz"
pkg_set src.sha "eede71f28371bf39aa69b45de23b329d37214016e2055269b3b5e7cfd40b59f5"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "gflags"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON
}
