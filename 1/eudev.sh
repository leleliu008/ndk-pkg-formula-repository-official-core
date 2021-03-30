summary "a fork of libudev"
src_git "https://github.com/gentoo/eudev.git"
src_url "https://dev.gentoo.org/~blueness/eudev/eudev-3.2.9.tar.gz"
src_sum "89618619084a19e1451d373c43f141b469c9fd09767973d73dd268b92074d4fc"

# string.h: void* mempcpy(void* __dst, const void* __src, size_t __n) __INTRODUCED_IN(23);
sdk_api 26

prepare() {
    sed_in_place '338,341d' src/shared/hashmap.c
}

build() {
    export CPPFLAGS="$CPPFLAGS -DLINE_MAX=2048"
    configure --disable-selinux
}
