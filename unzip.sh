package set summary "Extraction utility for .zip compressed archives"
package set webpage "https://infozip.sourceforge.io/UnZip.html"
package set src.url "https://downloads.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
package set src.sum "036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"
package set version "6.0-26"
package set bsystem "make"
package set dep.pkg "zip bzip2"
package set binsrcd true

# https://packages.debian.org/buster/unzip
package set patches "https://dl.bintray.com/fpliu/ndk-pkg-src/unzip_${PACKAGE_VERSION}.debian.tar.xz" \
        "88cb7c0f1fd13252b662dfd224b64b352f9e75cd86389557fcb23fa6d2638599"

prepare() {
    tar xf $(patches) -C "$SOURCE_DIR" || return 1
    while read patch
    do
        patch -p1 < "debian/patches/$patch" || return 1
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
        prefix="$ABI_INSTALL_DIR" \
        MANDIR="$ABI_INSTALL_DIR/share/man/man1"
}
