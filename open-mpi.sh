summary="High performance message passing library"
homepage="https://www.open-mpi.org"
url="https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.4.tar.bz2"
sha256="47e24eb2223fe5d24438658958a313b6b7a55bb281563542e1afc9dec4a31ac4"
dependencies="libevent"

prepare() {
    sed_in_place '/#include <stdlib.h>/a #include "../include/opal_config.h"' opal/util/malloc.h &&
    sed_in_place 's/rindex(/strrchr(/g' orte/mca/plm/rsh/plm_rsh_module.c &&
    sed_in_place 's/rindex(/strrchr(/g' oshmem/mca/memheap/base/memheap_base_static.c &&
    sed_in_place 's/bcmp(/memcmp(/g' ompi/mca/topo/treematch/treematch/tm_malloc.c
    write_android_stub
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-debug \
        --disable-coverage \
        --disable-mpi-fortran \
        --disable-oshmem-fortran \
        --enable-static \
        --enable-shared \
        --enable-binaries \
        --enable-mpi-java \
        --with-libevent="$libevent_DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS -DPOSIX_MADV_DONTNEED=MADV_DONTNEED -include android-stub.c" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        FC='' \
        PKG_CONFIG='' && \
    make clean &&
    make install
}

write_android_stub() {
    cat > android-stub.c <<EOF
#ifndef ANDROID_STUB_H
#define ANDROID_STUB_H

/* sysinfo is defined but not implemented.
 * we may be able to implement it ourselves. */
#define _SYS_SYSINFO_H_

#include <sys/cdefs.h>
#include <sys/resource.h>
#include <linux/kernel.h>
#include <unistd.h>

/* Use this stub version of getdtablesize
 * instead of the one in the header */
__attribute__((unused))
static int getdtablesize_stub(void) {
    struct rlimit r;
    if (getrlimit(RLIMIT_NOFILE, &r) < 0) {
        return sysconf(_SC_OPEN_MAX);
    }
    return r.rlim_cur;
}

#define getdtablesize() getdtablesize_stub()

#if __ANDROID_API__ < 21
#define RTLD_NOLOAD 0
#endif

#define sysinfo(foo) -1

#endif
EOF
}
