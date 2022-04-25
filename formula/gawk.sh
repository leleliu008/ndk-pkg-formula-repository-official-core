pkg_set summary "GNU awk utility"
pkg_set webpage "https://www.gnu.org/software/gawk"
pkg_set src.url "https://ftp.gnu.org/gnu/gawk/gawk-5.1.1.tar.xz"
pkg_set src.sha "d87629386e894bbea11a5e00515fc909dc9b7249529dad9e6a3a2c77085f7ea2"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "readline mpfr"

# struct passwd* getpwent(void) __INTRODUCED_IN(26);
#           void setpwent(void) __INTRODUCED_IN(26);
#           void endpwent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

build() {
    configure \
        --with-readline="$readline_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --enable-extensions \
        --enable-lint \
        --enable-mpfr \
        --disable-builtin-intdiv0
}
