pkg_set summary "Application-level logging library"
pkg_set git.url "https://github.com/google/glog.git"
pkg_set src.url "https://github.com/google/glog/archive/v0.6.0.tar.gz"
pkg_set src.sha "8a83bf982f37bb70825df71a9709fa90ea9f4447fb3c099e1d720a439d88bad6"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "gflags"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON
}
