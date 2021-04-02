summary "GNU awk utility"
webpage "https://www.gnu.org/software/gawk"
src_url "https://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.xz"
src_sum "cf5fea4ac5665fd5171af4716baab2effc76306a9572988d5ba1078f196382bd"
license "GPL-3.0"
bsystem "configure"
depends "readline mpfr"

# struct passwd* getpwent(void) __INTRODUCED_IN(26);
#           void setpwent(void) __INTRODUCED_IN(26);
#           void endpwent(void) __INTRODUCED_IN(26);
sdk_api 26

build() {
    configure \
        --with-readline="$readline_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --enable-extensions \
        --enable-lint \
        --enable-mpfr \
        --disable-builtin-intdiv0
}
