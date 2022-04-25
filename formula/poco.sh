pkg_set summary "C++ class libraries for building network and internet-based applications"
pkg_set webpage "https://pocoproject.org/"
pkg_set git.url "https://github.com/pocoproject/poco.git"
pkg_set version "1.11.1"
pkg_set src.url "https://pocoproject.org/releases/poco-$PACKAGE_VERSION/poco-$PACKAGE_VERSION-all.tar.gz"
pkg_set src.sha "31ccce6020047270003bfb5b0da7e2ad432884c23d3cd509c86f47cf3a5e5d2a"
pkg_set license "BSL-1.0"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DATA_ODBC=OFF \
        -DENABLE_DATA_MYSQL=OFF
}
