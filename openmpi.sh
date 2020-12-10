summary  "High performance message passing library"
homepage "https://www.open-mpi.org"
url      "https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.4.tar.bz2"
sha256   "47e24eb2223fe5d24438658958a313b6b7a55bb281563542e1afc9dec4a31ac4"
dependencies "libevent"

# int shmctl(int __shm_id, int __cmd, struct shmid_ds* __buf) __INTRODUCED_IN(26);

prepare() {
    sed_in_place '/#include <stdlib.h>/a #include "../include/opal_config.h"' opal/util/malloc.h &&
    sed_in_place 's/rindex(/strrchr(/g' orte/mca/plm/rsh/plm_rsh_module.c &&
    sed_in_place 's/rindex(/strrchr(/g' oshmem/mca/memheap/base/memheap_base_static.c &&
    sed_in_place 's/bcmp(/memcmp(/g'    ompi/mca/topo/treematch/treematch/tm_malloc.c
}

build() {
    export CPPFLAGS="$CPPFLAGS -DPOSIX_MADV_DONTNEED=MADV_DONTNEED"
    include_stub_getdtablesize
    configure \
        --disable-coverage \
        --disable-mpi-fortran \
        --disable-oshmem-fortran \
        --disable-builtin-atomics \
        --enable-sysv-shmem=no \
        --enable-sysv-sshmem=no \
        --enable-binaries \
        --enable-mpi-java \
        --with-libevent="$libevent_INSTALL_DIR" \
        FC=''
}
