package set summary "High performance message passing library"
package set webpage "https://www.open-mpi.org"
package set src.git "https://github.com/open-mpi/ompi.git"
package set src.url "https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.1.tar.bz2"
package set src.sum "e24f7a778bd11a71ad0c14587a7f5b00e68a71aa5623e2157bafee3d44c07cda"
package set license "BSD-3-Clause"
package set bsystem "configure"
package set dep.cmd "perl"
package set dep.pkg "libevent"
package set cdefine "POSIX_MADV_DONTNEED=MADV_DONTNEED"

# int shmctl(int __shm_id, int __cmd, struct shmid_ds* __buf) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place '/#include <stdlib.h>/a #include "../include/opal_config.h"' opal/util/malloc.h &&
    sed_in_place 's/rindex(/strrchr(/g' orte/mca/plm/rsh/plm_rsh_module.c &&
    sed_in_place 's/rindex(/strrchr(/g' oshmem/mca/memheap/base/memheap_base_static.c &&
    sed_in_place 's/bcmp(/memcmp(/g'    ompi/mca/topo/treematch/treematch/tm_malloc.c
}

build() {
    #export CPPFLAGS="$CPPFLAGS -include stdlib.h"
    include_stub_getdtablesize
    configure \
        --disable-coverage \
        --disable-mpi-fortran \
        --disable-mpi-java \
        --disable-oshmem-fortran \
        --disable-builtin-atomics \
        --enable-sysv-shmem=no \
        --enable-sysv-sshmem=no \
        --enable-binaries \
        --with-libevent="$libevent_INSTALL_DIR" \
        FC=''
}
