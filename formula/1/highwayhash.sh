pkg_set summary "Fast strong hash functions"
pkg_set git.url "https://github.com/google/highwayhash.git"
pkg_set license "Apache-2.0"
pkg_set bsystem "gmake"

prepare() {
    sed_in_place 's/| sed.*/> $@/' Makefile &&
    sed_in_place 's/.0 -Wl,-soname,libhighwayhash.so.0//' Makefile
    sed_in_place '/ln -s/d' Makefile
}

build() {
    unset MAKE_EXTRA_FLAGS
    case $TARGET_OS_ARCH in
        armv7a)  MAKE_EXTRA_FLAGS=HH_ARM=1     ;;
        aarch64) MAKE_EXTRA_FLAGS=HH_AARCH64=1 ;;
        *)       MAKE_EXTRA_FLAGS=X64=1
    esac
    gmakew -C "$PACKAGE_INSTALLING_BST_DIR" distclean &&
    gmakew -C "$PACKAGE_INSTALLING_BST_DIR" install PREFIX="$TARGET_INSTALL_DIR" CPPFLAGS="'$CPPFLAGS'" CXXFLAGS="'$CXXFLAGS'" LDFLAGS="'$LDFLAGS'" CXX="$CXX" AR="$AR" STRIP_CMD="$STRIP" $MAKE_EXTRA_FLAGS
}
