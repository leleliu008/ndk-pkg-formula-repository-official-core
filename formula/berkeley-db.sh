pkg_set summary "High performance key/value database"
pkg_set webpage "https://www.oracle.com/database/berkeley-db"
pkg_set src.url "https://fossies.org/linux/misc/db-18.1.40.tar.gz"
pkg_set src.sha "0cecb2ef0c67b166de93732769abdeba0555086d51de1090df325e18ee8da9c8"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "configure"
pkg_set dep.pkg "openssl"
pkg_set bscript "dist"

prepare() {
    sed_in_place 's| install_docs||' Makefile.in
}

build() {
    configure \
        --enable-cxx \
        --enable-stl \
        --enable-dbm \
        --enable-hash \
        --enable-compat185 \
        --enable-smallbuild \
        db_cv_atomic=gcc-builtin
}
