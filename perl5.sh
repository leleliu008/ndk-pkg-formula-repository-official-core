summary  "Highly capable, feature-rich programming language"
homepage "https://www.perl.org"
url      "https://www.cpan.org/src/5.0/perl-5.32.0.tar.xz"
sha256   "6f436b447cf56d22464f980fac1916e707a040e96d52172984c5d184c09b859b"
license  "GPL-1.0-or-later"

build() {
    cd $SOURCE_DIR &&
    ./Configure \
        -des \
        -Dprefix="$ABI_INSTALL_DIR" \
        -Dsysroot="$SYSROOT" \
        -Dosname=android \
        -Dtargetarch="$BUILD_FOR_ARCH" \
        -Dtargethost=android \
        -Dcc="$CC" \
        -Dar="$AR" \
        -Dnm="$NM" \
        -Dranlib="$RANLIB" \
        -Dusecrosscompile \
        -Duseshrplib \
        -Duselargefiles \
        -Dusethreads \
        -A ccflags="$CFLAGS" \
        -A cppflags="$CPPFLAGS" \
        -A ldfalgs="$LDFLAGS" &&
    $MAKE clean &&
    $MAKE &&
    $MAKE install
}
