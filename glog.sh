package set summary "Application-level logging library"
package set src.git "https://github.com/google/glog.git"
package set src.url "https://github.com/google/glog/archive/v0.4.0.tar.gz"
package set src.sum "f28359aeba12f30d73d9e4711ef356dc842886968112162bc73002645139c39c"
package set license "BSD-3-Clause"
package set bsystem "cmake"
package set dep.pkg "gflags"

build() {
    cmakew \
        -DWITH_TLS=ON \
        -DWITH_THREADS=ON \
        -DWITH_GFLAGS=ON \
        -Dgflags_DIR="$gflags_LIBRARY_DIR/cmake/gflags"
}
