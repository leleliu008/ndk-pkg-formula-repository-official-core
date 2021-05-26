package set summary "Linux Capability Library"
package set webpage "https://git.kernel.org/pub/scm/libs/libcap/libcap.git"
package set src.url "https://git.kernel.org/pub/scm/libs/libcap/libcap.git/snapshot/libcap-2.45.tar.gz"
package set src.sum "bf0496f7af816f20ccbad6a3e5e9714aa5da658fcb0804209137e4920417e33f"
package set bsystem "make"
package set dep.cmd "gperf"

# int getgrnam_r(const char* __name, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);

prepare() {
    sed_in_place 's/-lpthread//'            tests/Makefile &&
    sed_in_place 's/-lpthread//'            Make.Rules &&
    sed_in_place 's/indent -kr/indent -br/' Make.Rules &&
    sed_in_place 's/-i $@/-i".bak" $@/'        libcap/Makefile &&
    sed_in_place 's|size_t len/|size_t len/g|' libcap/Makefile
}

build() {
    makew -C "$SOURCE_DIR/libcap" clean &&
    makew -C "$SOURCE_DIR/libcap" install \
        prefix="$ABI_INSTALL_DIR" \
        lib=lib \
        PAM_CAP=no \
        GOLANG=no \
        BUILD_CC="$CC_FOR_BUILD" \
        BUILD_CFLAGS='' \
        CC="$CC" \
        CFLAGS="\"$CFLAGS $CPPFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    cp "$SOURCE_DIR/libcap/_caps_output.gperf" .
}
