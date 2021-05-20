package set summary "Lightning memory-mapped database: key-value data store"
package set webpage "https://symas.com/lmdb"
package set version "0.9.28"
package set src.url "https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.28/openldap-LMDB_${PACKAGE_VERSION}.tar.bz2"
package set src.sum "54f4a3a927793db950288e9254c0dfe35afc75af12cd92b8aaae0d1e990186c0"
package set license "OLDAP-2.8"
package set bsystem "make"
package set cdefine "MDB_USE_ROBUST=0"
package set sourced "libraries/liblmdb"

package set binsrcd true

build() {
    makew clean &&
    makew CC="$CC" XCFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" AR="$AR" &&
    makew install prefix="$ABI_INSTALL_DIR"
}
