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
    check_if_ffsl_exists &&
    include_stub_getdtablesize &&
    configure \
        --disable-gssapi \
        --enable-ipv6 \
        --enable-symvers \
        --enable-authdes
}

check_if_ffsl_exists() {
    if [ "$BUILD_ROUND_NUM" -eq 1 ] ; then
        cat > $BUILD_DIR/test.c <<'EOF'
        #include<strings.h>
        int main() {
            ffsl(1);
            return 0;
        }
EOF
        $CC $CPPFLAGS $CFLAGS $LDFLAGS $BUILD_DIR/test.c 2>/dev/null || {
            sed_in_place '1i static int ffsl(long value);' "$SOURCE_DIR/src/svc.c" &&
            cat >> "$SOURCE_DIR/src/svc.c" <<'EOF'
            // https://linux.die.net/man/3/ffsll
            static int ffsl(long value) {
                if (0 == value) return 0;

                int pos;
                for (pos = 1; !(value & 1); ++pos) {
                    value >>= 1;
                }
                return pos;
            }
EOF
        }
    fi
}
