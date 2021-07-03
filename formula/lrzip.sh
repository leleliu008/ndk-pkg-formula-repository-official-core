package set summary "Compression program with a very high compression ratio"
package set webpage "http://lrzip.kolivas.org"
package set src.git "https://github.com/ckolivas/lrzip.git"
package set src.url "http://ck.kolivas.org/apps/lrzip/lrzip-0.631.tar.bz2"
package set src.sum "0d11e268d0d72310d6d73a8ce6bb3d85e26de3f34d8a713055f3f25a77226455"
package set license "GPL-2.0"
package set dep.pkg "zlib bzip2 lzo"
package set dep.cmd "pkg-config"
package set bsystem "configure"

prepare() {
    sed_in_place '/-lpthread /d' configure
}

build() {
    check_if_ffsl_exists &&
    configure \
        --enable-static-bin \
        --enable-asm \
        ac_cv_lib_pthread_pthread_create=yes
}

check_if_ffsl_exists() {
    if [ "$BUILD_ROUND_NUM" -eq 1 ] ; then
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
