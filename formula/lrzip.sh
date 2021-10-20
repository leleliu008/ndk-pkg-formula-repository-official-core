package set summary "Compression program with a very high compression ratio"
package set webpage "http://lrzip.kolivas.org"
package set src.git "https://github.com/ckolivas/lrzip.git"
package set src.url "http://ck.kolivas.org/apps/lrzip/lrzip-0.641.tar.xz"
package set src.sum "2c6389a513a05cba3bcc18ca10ca820d617518f5ac6171e960cda476b5553e7e"
package set license "GPL-2.0"
package set dep.pkg "zlib bzip2 lz4 lzo"
package set dep.cmd "pkg-config"
package set bsystem "configure"
package set ldflags "-lc++_shared"

# stdio.h:326:FILE* fmemopen(void* __buf, size_t __size, const char* __mode) __INTRODUCED_IN(23);
package set sdk.api 23

prepare() {
    sed_in_place '/-lpthread /d' configure
}

build() {
    #check_if_ffsl_exists &&
    configure \
        --enable-static-bin=yes \
        --disable-asm \
        ac_cv_lib_pthread_pthread_create=yes
}

check_if_ffsl_exists() {
    if [ "$BUILD_INDEX" -eq 1 ] ; then
        cat > $BUILD_DIR/test.c <<'EOF'
        #include<strings.h>
        int main() {
            ffsll(1);
            return 0;
        }
EOF
        $CC $CPPFLAGS $CFLAGS $LDFLAGS $BUILD_DIR/test.c 2>/dev/null || {
            sed_in_place '1i static int ffsll(long long value);' "$SOURCE_DIR/rzip.c" &&
            cat >> "$SOURCE_DIR/rzip.c" <<'EOF'
            // https://linux.die.net/man/3/ffsll
            static int ffsll(long long value) {
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
