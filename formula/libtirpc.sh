pkg_set summary "Port of Sun Transport-Independent RPC library to Linux"
pkg_set webpage "https://sourceforge.net/projects/libtirpc"
pkg_set git.url "https://src.fedoraproject.org/rpms/libtirpc.git"
pkg_set src.url "https://downloads.sourceforge.net/project/libtirpc/libtirpc/1.3.2/libtirpc-1.3.2.tar.bz2"
pkg_set src.sha "e24eb88b8ce7db3b7ca6eb80115dd1284abc5ec32a8deccfed2224fc2532b9fd"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "libgetdtablesize"
pkg_set bsystem "configure"

# https://github.com/openbsd/src/commit/9a4976752c76d2a34f38575c4ce09dd50f5f80b7
pkg_set cdefine "_GNU_SOURCE quad_t=int64_t u_quad_t=uint64_t NGROUPS=20"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
# void endgrent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

build() {
    configure \
        --disable-gssapi \
        --enable-symvers \
        --enable-authdes \
        --enable-ipv6
}
