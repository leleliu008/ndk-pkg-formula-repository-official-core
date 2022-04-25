pkg_set summary "Lightning memory-mapped database: key-value data store"
pkg_set webpage "https://symas.com/lmdb"
pkg_set src.url "https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.29/openldap-LMDB_0.9.29.tar.bz2"
pkg_set src.sha "182e69af99788b445585b8075bbca89ae8101069fbeee25b2756fb9590e833f8"
pkg_set license "OLDAP-2.8"
pkg_set cdefine "MDB_USE_ROBUST=0"
pkg_set bscript "libraries/liblmdb"
pkg_set bsystem "make"
pkg_set binbstd 'yes'

build() {
    makew clean &&
    makew CC="$CC" XCFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" AR="$AR" &&
    makew install prefix="$TARGET_INSTALL_DIR"
}
