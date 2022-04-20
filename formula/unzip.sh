package set summary "Extraction utility for .zip compressed archives"
package set webpage "https://infozip.sourceforge.io/UnZip.html"

package set version "6.0-26"

package set src.url "https://downloads.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
package set src.sum "036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"

# https://packages.debian.org/buster/unzip
package set fix.url "https://deb.debian.org/debian/pool/main/u/unzip/unzip_${PACKAGE_VERSION}.debian.tar.xz"
package set fix.sum "88cb7c0f1fd13252b662dfd224b64b352f9e75cd86389557fcb23fa6d2638599"

package set license "Info-ZIP"
package set dep.pkg "zip bzip2"
package set bsystem "make"
package set binbstd 'yes'

prepare() {
    run tar xf $PACKAGE_FIX_PATH -C "$PACKAGE_BSCRIPT_DIR" || return 1
    while read PATCH
    do
        patch -p1 < "debian/patches/$PATCH" || return 1
    done < debian/patches/series
}

build() {
    makew -f unix/Makefile clean &&
    makew -f unix/Makefile generic \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" \
        AS="$AS" \
        STRIP="$STRIP" \
        LOCAL_UNZIP="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    makew -f unix/Makefile install \
        prefix="$TARGET_INSTALL_DIR" \
        MANDIR="$TARGET_INSTALL_DIR/share/man/man1"
}
