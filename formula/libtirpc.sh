package set summary "Port of Sun's Transport-Independent RPC library to Linux"
package set webpage "https://sourceforge.net/projects/libtirpc"
package set src.git "https://src.fedoraproject.org/rpms/libtirpc.git"
package set src.url "https://downloads.sourceforge.net/project/libtirpc/libtirpc/1.3.2/libtirpc-1.3.2.tar.bz2"
package set src.sum "e24eb88b8ce7db3b7ca6eb80115dd1284abc5ec32a8deccfed2224fc2532b9fd"
package set bsystem "configure"

# https://github.com/openbsd/src/commit/9a4976752c76d2a34f38575c4ce09dd50f5f80b7
package set cdefine "_GNU_SOURCE quad_t=int64_t u_quad_t=uint64_t NGROUPS=20"

# unistd.h: int getdomainname(char* __buf, size_t __buf_size) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place 's/LIBS="-lpthread\s*$LIBS"//g' configure &&
    sed_in_place 's/-lpthread//g' src/Makefile.am &&
    sed_in_place 's/-lpthread//g' src/Makefile.in
}

build() {
    include_stub_getdtablesize &&
    configure \
        --disable-gssapi \
        --enable-symvers \
        --enable-authdes \
        --enable-ipv6
}
