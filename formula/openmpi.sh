package set summary "High performance message passing library"
package set webpage "https://www.open-mpi.org"
package set git.url "https://github.com/open-mpi/ompi.git"
package set src.url "https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.2.tar.bz2"
package set src.sum "9b78c7cf7fc32131c5cf43dd2ab9740149d9d87cadb2e2189f02685749a6b527"
package set license "BSD-3-Clause"
package set bsystem "configure"
package set dep.cmd "perl"
package set dep.pkg "libevent"
package set cdefine "POSIX_MADV_DONTNEED=MADV_DONTNEED"

# int shmctl(int __shm_id, int __cmd, struct shmid_ds* __buf) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place 's/#define HAS_SHMDT/#define XXXXXXXXX/' opal/mca/memory/patcher/memory_patcher_component.c &&
    sed_in_place 's/#define HAS_SHMAT/#define YYYYYYYYY/' opal/mca/memory/patcher/memory_patcher_component.c &&
    sed_in_place 's/HAS_SHMDT/(defined(SYS_shmdt) || (defined(IPCOP_shmdt) \&\& defined(SYS_ipc)))/' opal/mca/memory/patcher/memory_patcher_component.c &&
    sed_in_place 's/HAS_SHMAT/(defined(SYS_shmat) || (defined(IPCOP_shmat) \&\& defined(SYS_ipc)))/' opal/mca/memory/patcher/memory_patcher_component.c &&
    sed_in_place '/#include <stdlib.h>/a #include "../include/opal_config.h"' opal/util/malloc.h &&
    sed_in_place 's/rindex(/strrchr(/g' orte/mca/plm/rsh/plm_rsh_module.c &&
    sed_in_place 's/rindex(/strrchr(/g' oshmem/mca/memheap/base/memheap_base_static.c &&
    sed_in_place 's/bcmp(/memcmp(/g'    ompi/mca/topo/treematch/treematch/tm_malloc.c &&
    sed_in_place '1i static int getdtablesize(void);' orte/mca/state/base/state_base_fns.c &&
    cat >> orte/mca/state/base/state_base_fns.c <<EOF
#include <sys/cdefs.h>
#include <sys/resource.h>
#include <linux/kernel.h>
static int getdtablesize(void) {
    struct rlimit r;
    if (getrlimit(RLIMIT_NOFILE, &r) < 0) {
        return sysconf(_SC_OPEN_MAX);
    }
    return r.rlim_cur;
}
EOF
}

build() {
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
