package set summary "Vector graphics library with cross-device output support"
package set webpage "https://cairographics.org"
package set src.url "https://cairographics.org/releases/cairo-1.16.0.tar.xz"
package set src.sum "5e7b29b3f113ef870d1e3ecf8adf21f923396401604bda16d44be45e66052331"
package set license "LGPL-2.1"
package set dep.cmd "patch pkg-config"
package set dep.pkg "libxml2 libpng pixman lzo glib fontconfig"
package set ldflags "-llog"
package set patches "https://raw.githubusercontent.com/termux/termux-packages/master/packages/libcairo/android-shmem.patch" \
                    "f12491f7411e7c5ba6bf178c3e8c420f5de45d93818f0c0b857eb020bc3b98ef"

prepare() {
    patch -p1 < $PACKAGE_PATCHES &&
    sed_in_place 's|_PATH_TMP||'          src/android-shmem.c &&
    sed_in_place '12a #include<string.h>' src/android-shmem.c &&
    sed_in_place '12a #include<fcntl.h>'  src/android-shmem.c &&
    sed_in_place 's|ifdef HAVE_SCHED_H|if 1|g' perf/cairo-perf-micro.c &&
    autoreconf -ivf
}

build() {
    export CPPFLAGS="$CPPFLAGS -include string.h"
    configure \
        --without-x \
        --disable-valgrind \
        --enable-xml \
        --enable-png \
        --enable-pdf \
        --enable-svg \
        --enable-ft \
        --enable-fc \
        ac_cv_lib_rt_shm_open=no
}
