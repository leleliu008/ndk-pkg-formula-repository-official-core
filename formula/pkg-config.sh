pkg_set summary "Manage compile and link flags for libraries"
pkg_set webpage "https://freedesktop.org/wiki/Software/pkg-config"
pkg_set src.url "https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz"
pkg_set src.sha "6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "libiconv"

prepare() {
    CACHE_FILE="$PACKAGE_BSCRIPT_DIR/glib/configure.cache"
    sed_in_place '/HAVE_PTHREAD_COND_TIMEDWAIT_MONOTONIC/d' glib/configure
}

build() {
    gen_glib_configure_cache_file &&
    configure \
        --with-internal-glib \
        --disable-host-tool \
        --cache-file="$CACHE_FILE"
    # https://www.gnu.org/software/autoconf/manual/autoconf-2.67/html_node/Cache-Files.html
}

gen_glib_configure_cache_file() {
    cat > "$CACHE_FILE" <<EOF
glib_cv_stack_grows=no
glib_cv_working_bcopy=no
glib_cv_uscore=no
ac_cv_func_posix_getpwuid_r=no
ac_cv_func_posix_getgrgid_r=no
EOF
}
