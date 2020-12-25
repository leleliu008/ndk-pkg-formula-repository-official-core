summary "Extraction utility for .zip compressed archives"
webpage "https://infozip.sourceforge.io/UnZip.html"
src_url "https://downloads.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
src_sum "036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"
version "6.0-25"
require "patch tar"
depends "zip bzip2"
patches "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/u/unzip/unzip_$(version).debian.tar.xz" \
        "0783e4d11d755cb43904e3f59a60dbb92ee9c6b08ac54d86bc61f9848216f37b"

# https://packages.debian.org/buster/unzip

prepare() {
    tar xf $(patches) -C "$WORKING_DIR" || return 1
    while read patch
    do
        patch -p1 < "debian/patches/$patch" || return 1
    done < debian/patches/series
}

build() {
    cd "$SOURCE_DIR" &&
    $MAKE -f unix/Makefile clean &&
    $MAKE -f unix/Makefile generic \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS" \
        AS="$AS" \
        STRIP="$STRIP" \
        LOCAL_UNZIP="$CFLAGS $CPPFLAGS $LDFLAGS" &&
    $MAKE -f unix/Makefile install \
        prefix="$ABI_INSTALL_DIR" \
        MANDIR="$ABI_INSTALL_DIR/share/man/man1"
}
