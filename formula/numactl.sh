pkg_set summary "NUMA support for Linux"
pkg_set git.url "https://github.com/numactl/numactl.git"
pkg_set src.url "https://github.com/numactl/numactl/releases/download/v2.0.14/numactl-2.0.14.tar.gz"
pkg_set src.sha "826bd148c1b6231e1284e42a4db510207747484b112aee25ed6b1078756bcff6"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

# sys/shm.h:
# void* shmat(int __shm_id, const void* __addr, int __flags) __INTRODUCED_IN(26);
# int shmctl(int __shm_id, int __cmd, struct shmid_ds* __buf) __INTRODUCED_IN(26);
# int shmdt(const void* __addr) __INTRODUCED_IN(26);
# int shmget(key_t __key, size_t __size, int __flags) __INTRODUCED_IN(26);
pkg_set sdk.api 26
