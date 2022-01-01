package set summary "Just-In-Time Compiler (JIT) for the Lua programming language"
package set webpage "https://luajit.org/"
package set git.url "https://github.com/LuaJIT/LuaJIT.git"
package set src.url "https://github.com/leleliu008/test/releases/download/v2.1/LuaJIT-2.1.tar.xz"
package set src.sum "0ed7e56ad5dbb24b87669ce9fc8a26995a919afe92efc05dad041e3f5cb1f59f"
package set license "MIT"
package set dep.cmd "cc"
package set bsystem "make"

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
    makew -C "$SOURCE_DIR" clean install \
        PREFIX="$ABI_INSTALL_DIR" \
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
