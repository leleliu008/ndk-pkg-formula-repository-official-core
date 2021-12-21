package set summary "C++ class libraries for building network and internet-based applications"
package set webpage "https://pocoproject.org/"
package set src.git "https://github.com/pocoproject/poco.git"
package set version "1.11.1"
package set src.url "https://pocoproject.org/releases/poco-$PACKAGE_VERSION/poco-$PACKAGE_VERSION-all.tar.gz"
package set src.sum "31ccce6020047270003bfb5b0da7e2ad432884c23d3cd509c86f47cf3a5e5d2a"
package set license "BSL-1.0"
package set dep.pkg "openssl"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_DATA_ODBC=OFF \
        -DENABLE_DATA_MYSQL=OFF
}
