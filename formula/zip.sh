package set summary "Compression and file packaging/archive utility"
package set webpage "https://infozip.sourceforge.io/Zip.html"

package set version "3.0-11"

package set src.url "https://downloads.sourceforge.net/project/infozip/Zip%203.x%20%28latest%29/3.0/zip30.tar.gz"
package set src.sum "f0e8bb1f9b7eb0b01285495a2699df3a4b766784c1765a8f1aeedf63c0806369"

# https://packages.debian.org/sid/zip
package set fix.url "https://deb.debian.org/debian/pool/main/z/zip/zip_${PACKAGE_VERSION}.debian.tar.xz"
package set fix.sum "c5c0714a88592f9e02146bfe4a8d26cd9bd97e8d33b1efc8b37784997caa40ed"

package set bsystem "make"
package set binsrcd 'yes'

prepare() {
    run tar xf $PACKAGE_FIX_PATH -C "$SOURCE_DIR" || return 1
    while read PATCH
    do
        patch -p1 < "debian/patches/$PATCH" || return 1
    done < debian/patches/series
    sed_in_place 's|$(AS) _match.s|$(AS) -o _match.o _match.s|'          unix/Makefile &&
    sed_in_place 's|$(AS) _crc_i386.s|$(AS) -o _crc_i386.o _crc_i386.s|' unix/Makefile
}

build() {
    makew -f unix/Makefile clean &&
    makew -f unix/Makefile generic \
        CC="$CC" \
        CPP="'$CPP'" \
        AS="$AS" \
        AR="$AR" \
        CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    makew -f unix/Makefile install \
        prefix="$TARGET_INSTALL_DIR" \
        MANDIR="$TARGET_INSTALL_DIR/share/man/man1"
}
