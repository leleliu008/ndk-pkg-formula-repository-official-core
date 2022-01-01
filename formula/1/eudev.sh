package set summary "a fork of libudev"
package set git.url "https://github.com/gentoo/eudev.git"
package set src.url "https://dev.gentoo.org/~blueness/eudev/eudev-3.2.9.tar.gz"
package set src.sum "89618619084a19e1451d373c43f141b469c9fd09767973d73dd268b92074d4fc"

# string.h: void* mempcpy(void* __dst, const void* __src, size_t __n) __INTRODUCED_IN(23);
package set sdk.api 26

prepare() {
    sed_in_place '338,341d' src/shared/hashmap.c
}

build() {
    export CPPFLAGS="$CPPFLAGS -DLINE_MAX=2048"
    configure --disable-selinux
}
