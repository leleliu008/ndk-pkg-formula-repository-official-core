summary "Application-level logging library"
webpage "https://github.com/google/glog"
src_url "https://github.com/google/glog/archive/v0.4.0.tar.gz"
src_sum "f28359aeba12f30d73d9e4711ef356dc842886968112162bc73002645139c39c"
license "BSD-3-Clause"
depends "gflags"

build() {
    cmake \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON \
        -Dgflags_DIR="$gflags_LIBRARY_DIR/cmake/gflags"
}
