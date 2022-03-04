package set summary "Lightning memory-mapped database: key-value data store"
package set webpage "https://symas.com/lmdb"
package set src.url "https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.29/openldap-LMDB_0.9.29.tar.bz2"
package set src.sum "182e69af99788b445585b8075bbca89ae8101069fbeee25b2756fb9590e833f8"
package set license "OLDAP-2.8"
package set cdefine "MDB_USE_ROBUST=0"
package set sourced "libraries/liblmdb"
package set bsystem "make"
package set binsrcd 'yes'

build() {
    makew clean &&
    makew CC="$CC" XCFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" AR="$AR" &&
    makew install prefix="$ABI_INSTALL_DIR"
}
