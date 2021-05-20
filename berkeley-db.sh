package set summary "High performance key/value database"
package set webpage "https://www.oracle.com/database/berkeley-db"
package set src.url "https://fossies.org/linux/misc/db-18.1.40.tar.gz"
package set src.sum "0cecb2ef0c67b166de93732769abdeba0555086d51de1090df325e18ee8da9c8"
package set license "BSD 3-Clause"
package set bsystem "configure"
package set dep.pkg "openssl"
package set sourced "dist"

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
