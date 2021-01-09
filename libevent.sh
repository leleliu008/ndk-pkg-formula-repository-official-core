summary "Asynchronous event library"
webpage "https://libevent.org"
version "2.1.12"
src_url "https://github.com/libevent/libevent/releases/download/release-$(version)-stable/libevent-$(version)-stable.tar.gz"
src_sum "92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb"
depends "openssl"

build() {
    cmake \
        -DEVENT__DISABLE_DEBUG_MODE=ON \
        -DEVENT__DISABLE_TESTS=ON \
        -DEVENT__DISABLE_REGRESS=ON \
        -DEVENT__DISABLE_BENCHMARK=ON \
        -DEVENT__DISABLE_SAMPLES=ON \
        -DEVENT__DISABLE_OPENSSL=OFF \
        -DEVENT__DOXYGEN=OFF \
        -DEVENT__COVERAGE=OFF \
        -DEVENT__LIBRARY_TYPE=BOTH
}
