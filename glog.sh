summary  "Application-level logging library"
homepage "https://github.com/google/glog"
url      "https://github.com/google/glog/archive/v0.4.0.tar.gz"
sha256   "f28359aeba12f30d73d9e4711ef356dc842886968112162bc73002645139c39c"
license  "BSD-3-Clause"
dependencies "gflags"

build() {
    cmake \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON \
        -Dgflags_DIR="$gflags_LIBRARY_DIR/cmake/gflags"
}
