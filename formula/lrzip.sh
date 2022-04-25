pkg_set summary "Compression program with a very high compression ratio"
pkg_set webpage "http://lrzip.kolivas.org"
pkg_set git.url "https://github.com/ckolivas/lrzip.git"
pkg_set src.url "http://ck.kolivas.org/apps/lrzip/lrzip-0.641.tar.xz"
pkg_set src.sha "2c6389a513a05cba3bcc18ca10ca820d617518f5ac6171e960cda476b5553e7e"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "zlib bzip2 lz4 lzo"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"
pkg_set ldflags "-lc++_shared"

# stdio.h:326:FILE* fmemopen(void* __buf, size_t __size, const char* __mode) __INTRODUCED_IN(23);
pkg_set sdk.api 23

prepare() {
    sed_in_place '/-lpthread /d' configure
    sed_in_place 's/PAGE_SIZE/XXXXXXXXXXXXXXXXXXXXXX/' lrzip_private.h util.c
}

build() {
    configure \
        --disable-asm \
        ac_cv_lib_pthread_pthread_create=yes
}
