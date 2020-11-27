summary  "Extraction utility for .zip compressed archives"
homepage "https://infozip.sourceforge.io/UnZip.html"
url      "https://downloads.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
sha256   "036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"
version  "6.0-25"
requirements "patch tar"
dependencies "zip bzip2"

prepare() {
    # https://packages.debian.org/buster/unzip
    patches \
        "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/u/unzip/unzip_$(version).debian.tar.xz" \
        "0783e4d11d755cb43904e3f59a60dbb92ee9c6b08ac54d86bc61f9848216f37b" &&
    tar xf "$MY_PATCH_DIR/unzip/unzip_$(version).debian.tar.xz" -C "$WORKING_DIR" && {
        while read line
        do
            patch -p1 < "debian/patches/$line"
        done < debian/patches/series
    }
}

# D_USE_BZ2=-DUSE_BZIP2 \
# L_BZ2=-lbz2 \
# IZ_BZIP2="$bzip2_LIBRARY_DIR" \
# LIBBZ2="$bzip2_LIBRARY_DIR/libbz2.a" \

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
