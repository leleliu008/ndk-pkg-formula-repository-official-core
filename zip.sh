summary "Compression and file packaging/archive utility"
webpage "https://infozip.sourceforge.io/Zip.html"
src_url "https://downloads.sourceforge.net/project/infozip/Zip%203.x%20%28latest%29/3.0/zip30.tar.gz"
src_sum "f0e8bb1f9b7eb0b01285495a2699df3a4b766784c1765a8f1aeedf63c0806369"
version "3.0-11"
bsystem "make"
require "patch"
patches "https://deb.debian.org/debian/pool/main/z/zip/zip_$(version).debian.tar.xz" \
        "c5c0714a88592f9e02146bfe4a8d26cd9bd97e8d33b1efc8b37784997caa40ed"
# https://packages.debian.org/sid/zip

prepare() {
    tar xf $(patches) -C "$SOURCE_DIR" || return 1
    while read patch
    do
        patch -p1 < "debian/patches/$patch" || return 1
    done < debian/patches/series
    sed_in_place 's|$(AS) _match.s|$(AS) -o _match.o _match.s|'          unix/Makefile &&
    sed_in_place 's|$(AS) _crc_i386.s|$(AS) -o _crc_i386.o _crc_i386.s|' unix/Makefile
}

build_in_sourced

build() {
    make -f unix/Makefile clean &&
    make -f unix/Makefile generic \
        CC="$CC" \
        CPP="'$CPP'" \
        AS="$AS" \
        AR="$AR" \
        CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    make -f unix/Makefile install \
        prefix="$ABI_INSTALL_DIR" \
        MANDIR="$ABI_INSTALL_DIR/share/man/man1"
}
