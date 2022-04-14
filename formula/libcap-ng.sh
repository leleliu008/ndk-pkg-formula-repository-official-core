package set summary "Library making programming with POSIX capabilities easier than traditional libcap"
package set webpage "https://people.redhat.com/sgrubb/libcap-ng"
package set license "LGPL-2.1"
package set git.url "https://github.com/stevegrubb/libcap-ng.git"
package set src.url "https://github.com/stevegrubb/libcap-ng/archive/v0.8.3.tar.gz"
package set src.sum "e542e9139961f0915ab5878427890cdc7762949fbe216bd0cb4ceedb309bb854"
package set dep.cmd "glibtoolize:libtoolize"
package set bsystem "autogen"

# stdio_ext.h: int __fsetlocking(FILE* __fp, int __type) __INTRODUCED_IN(23);
package set sdk.api 23

build() {
    configure \
        --with-warn \
        --without-debug \
        --without-python \
        --without-python3
}
