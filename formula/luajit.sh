package set summary "Just-In-Time Compiler (JIT) for the Lua programming language"
package set webpage "https://luajit.org/"
package set git.url "https://github.com/LuaJIT/LuaJIT.git"
package set git.rev "a91d0d9d3bba1a936669cfac3244509a0f2ac0e3"
package set version "2.1.0"
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