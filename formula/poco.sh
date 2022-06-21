pkg_set summary "C++ class libraries for building network and internet-based applications"
pkg_set webpage "https://pocoproject.org/"
pkg_set git.url "https://github.com/pocoproject/poco.git"
pkg_set version "1.11.3"
pkg_set src.url "https://pocoproject.org/releases/poco-$PACKAGE_VERSION/poco-$PACKAGE_VERSION-all.tar.gz"
pkg_set src.sha "a7aabd1323963b8b7078b5baa08a6dd100bc336287cae02fae14b02b18ec0aa3"
pkg_set license "BSL-1.0"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DATA_ODBC=OFF \
        -DENABLE_DATA_MYSQL=OFF
}
