pkg_set summary "Just-In-Time Compiler (JIT) for the Lua programming language"
pkg_set webpage "https://luajit.org/"
pkg_set git.url "https://github.com/LuaJIT/LuaJIT.git"
pkg_set git.sha "a91d0d9d3bba1a936669cfac3244509a0f2ac0e3"
pkg_set version "2.1.0"
pkg_set dep.cmd "cc"
pkg_set bsystem "make"
pkg_set binbstd "yes"
pkg_set license "MIT|COPYRIGHT|https://raw.githubusercontent.com/LuaJIT/LuaJIT/v2.1/COPYRIGHT"
pkg_set developer "Mike+Pall|luajit@freelists.org|LuaJIT|https://github.com/LuaJIT"

prepare() {
    printf '%s\n' 'int main() {return 0;}' > test.c

    cc -m32 test.c 2> /dev/null || {
        if command -v apt > /dev/null ; then
            run "$sudo" apt -y update &&
            run "$sudo" apt -y install gcc-multilib
        fi
    }

    if [ "$NATIVE_OS_KIND" = darwin ] ; then
        export CFLAGS="$CFLAGS -arch=$NATIVE_OS_ARCH"
    fi
}

build() {
    if [ "$TARGET_INDEX" -ne 1 ] ; then
        run cd
        run rm -rf "$PACKAGE_SRC_TOP_DIR"
        run mkdir  "$PACKAGE_SRC_TOP_DIR"
        run cp -r  "$PACKAGE_SRC_PATH/." "$PACKAGE_SRC_TOP_DIR"
        run cd "$PACKAGE_SRC_TOP_DIR"
    fi

    makew clean install \
        PREFIX="$TARGET_INSTALL_DIR" \
        HOST_SYS=$(uname -s) \
        HOST_CC="'$CC_FOR_BUILD -m$TARGET_OS_BIT'" \
        HOST_LD="$CC_FOR_BUILD" \
        HOST_CFLAGS="'$CPPFLAGS_FOR_BUILD $CFLAGS_FOR_BUILD'" \
        HOST_LDFLAGS="'$LDFLAGS_FOR_BUILD'" \
        CFLAGS= \
        LDFLAGS= \
        TARGET_SYS=Linux \
        TARGET_CFLAGS="'$CPPFLAGS $CFLAGS'" \
        TARGET_LDFLAGS="'$LDFLAGS'" \
        TARGET_CC="$CC" \
        TARGET_LD="$CC" \
        TARGET_AR="'$AR rcus'" \
        TARGET_STRIP="$STRIP" \
        STATIC_CC="$CC" \
        DYNAMIC_CC="'$CC -fPIC'" \
        Q=
}
