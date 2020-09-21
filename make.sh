summary="Utility for directing compilation"
homepage="https://www.gnu.org/software/make"
url="https://ftp.gnu.org/gnu/make/make-4.3.tar.gz"
sha256="e05fdde47c5f7ca45cb697e973894ff4f5d79e13b750ed57d7b66d8defc78e19"
license="GPL-3.0"

prepare() {
    sed_in_place '/sigsetmask (siggetmask (0) & ~fatal_signal_mask)/a ;' src/job.c
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-largefile \
        --disable-rpath \
        --disable-nls \
        --without-guile \
        --without-dmalloc \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG_PATH='' &&
    sed_in_place '/HAVE_SIGSETMASK/d' src/config.h &&
    make clean &&
    make install
}
