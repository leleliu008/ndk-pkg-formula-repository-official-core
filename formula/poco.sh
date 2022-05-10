pkg_set summary "C++ class libraries for building network and internet-based applications"
pkg_set webpage "https://pocoproject.org/"
pkg_set git.url "https://github.com/pocoproject/poco.git"
pkg_set version "1.11.2"
pkg_set src.url "https://pocoproject.org/releases/poco-$PACKAGE_VERSION/poco-$PACKAGE_VERSION-all.tar.gz"
pkg_set src.sha "904b538d4096a60e0d5fe67e8812d12c633508a76e1d73fdff1ec300181eaa1d"
pkg_set license "BSL-1.0"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DATA_ODBC=OFF \
        -DENABLE_DATA_MYSQL=OFF
}
