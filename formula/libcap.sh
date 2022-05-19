pkg_set summary "Linux Capability Library"
pkg_set git.url "https://git.kernel.org/pub/scm/libs/libcap/libcap.git"
pkg_set src.url "https://git.kernel.org/pub/scm/libs/libcap/libcap.git/snapshot/libcap-2.64.tar.gz"
pkg_set src.sha "0e47f5a88d0a296db279793d1ff525d7cc9b77887e50a0faf764b44f8cd7e85d"
pkg_set license "BSD-3-Clause&&GPL-2.0-or-later|License|https://git.kernel.org/pub/scm/libs/libcap/libcap.git/plain/License"
pkg_set dep.cmd "gperf"
pkg_set bsystem "gmake"

# int getgrnam_r(const char* __name, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);

prepare() {
    sed_in_place 's/-lpthread//'            tests/Makefile &&
    sed_in_place 's/-lpthread//'            Make.Rules &&
    sed_in_place 's/indent -kr/indent -br/' Make.Rules &&
    sed_in_place 's/-i $@/-i".bak" $@/'        libcap/Makefile &&
    sed_in_place 's|size_t len/|size_t len/g|' libcap/Makefile
}

build() {
    gmakew -C "$PACKAGE_BSCRIPT_DIR/libcap" clean &&
    gmakew -C "$PACKAGE_BSCRIPT_DIR/libcap" install \
        prefix="$TARGET_INSTALL_DIR" \
        lib=lib \
        PAM_CAP=no \
        GOLANG=no \
        BUILD_CC="$CC_FOR_BUILD" \
        BUILD_CFLAGS='' \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS'" \
        LDFLAGS="'$LDFLAGS'" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        OBJCOPY="$OBJCOPY" &&
    cp "$PACKAGE_BSCRIPT_DIR/libcap/_caps_output.gperf" .
}
