package set summary "Fast strong hash functions"
package set git.url "https://github.com/google/highwayhash.git"
package set license "Apache-2.0"
package set bsystem "make"

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
    makew -C "$SOURCE_DIR" distclean &&
    makew -C "$SOURCE_DIR" install PREFIX="$ABI_INSTALL_DIR" CPPFLAGS="'$CPPFLAGS'" CXXFLAGS="'$CXXFLAGS'" LDFLAGS="'$LDFLAGS'" CXX="$CXX" AR="$AR" STRIP_CMD="$STRIP" $MAKE_EXTRA_FLAGS
}
