summary "Lightning memory-mapped database: key-value data store"
webpage "https://symas.com/lmdb"
version "0.9.28"
src_url "https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.28/openldap-LMDB_$(version).tar.bz2"
src_sum "54f4a3a927793db950288e9254c0dfe35afc75af12cd92b8aaae0d1e990186c0"
license "OLDAP-2.8"
bsystem "make"
cdefine "MDB_USE_ROBUST=0"
sourced "libraries/liblmdb"

build_in_sourced

build() {
    make clean &&
    make CC="$CC" XCFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" AR="$AR" &&
    make install prefix="$ABI_INSTALL_DIR"
}
