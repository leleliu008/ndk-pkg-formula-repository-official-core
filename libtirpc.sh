summary "Port of Sun's Transport-Independent RPC library to Linux"
webpage "https://sourceforge.net/projects/libtirpc"
src_url "https://nchc.dl.sourceforge.net/project/libtirpc/libtirpc/1.2.6/libtirpc-1.2.6.tar.bz2"
src_sum "4278e9a5181d5af9cd7885322fdecebc444f9a3da87c526e7d47f7a12a37d1cc"

# unistd.h: int getdomainname(char* __buf, size_t __buf_size) __INTRODUCED_IN(26);
sdk_api 26

prepare() {
    sed_in_place 's/LIBS="-lpthread\s*$LIBS"//g' configure &&
    sed_in_place 's/-lpthread//g' src/Makefile.am &&
    sed_in_place 's/-lpthread//g' src/Makefile.in
}

build() {
    # https://github.com/openbsd/src/commit/9a4976752c76d2a34f38575c4ce09dd50f5f80b7
    export CPPFLAGS="$CPPFLAGS -Dquad_t=int64_t -Du_quad_t=uint64_t -DNGROUPS=20"

    configure \
        --disable-gssapi \
        --enable-ipv6 \
        --enable-symvers \
        --enable-authdes
}
