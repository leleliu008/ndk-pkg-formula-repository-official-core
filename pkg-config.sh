summary="Manage compile and link flags for libraries"
homepage="https://freedesktop.org/wiki/Software/pkg-config"
url="https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz"
sha256="6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591"
dependencies="libiconv"

gen_glib_configure_cache_file() {
    cat > glib/configure.cache <<EOF
glib_cv_stack_grows=no
glib_cv_working_bcopy=no
glib_cv_uscore=no
ac_cv_func_posix_getpwuid_r=no
ac_cv_func_posix_getgrgid_r=no
EOF
}

build() {
    gen_glib_configure_cache_file &&
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-internal-glib \
        --disable-host-tool \
        --enable-largefile \
        --enable-static \
        --enable-shared \
        --cache-file="$DIR_SRC/glib/configure.cache" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place '/#define HAVE_PTHREAD_COND_TIMEDWAIT_MONOTONIC 1/d'    glib/config.h &&
    sed_in_place '/#define HAVE_PTHREAD_COND_TIMEDWAIT_MONOTONIC_NP 1/d' glib/config.h &&
    make clean &&
    make install
}
