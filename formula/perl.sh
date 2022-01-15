package set summary "Highly capable, feature-rich programming language"
package set webpage "https://www.perl.org"
package set git.url "https://github.com/perl/perl5.git"
package set src.url "https://www.cpan.org/src/5.0/perl-5.34.0.tar.xz"
package set src.sum "82c2e5e5c71b0e10487a80d79140469ab1f8056349ca8545140a224dbbed7ded"
package set license "GPL-1.0-or-later"
package set dep.cmd "cc ar nm ranlib readelf"
package set bsystem "make"

prepare() {
    # http://arsv.github.io/perl-cross/index.html

    PACKAGE_RES_URL='https://github.com/arsv/perl-cross/releases/download/1.3.6/perl-cross-1.3.6.tar.gz'
    PACKAGE_RES_SUM='4010f41870d64e3957b4b8ce70ebba10a7c4a3e86c5551acb4099c3fcbb37ce5'
    PACKAGE_RES_NAME=$(basename "$PACKAGE_RES_URL")
    PACKAGE_RES_PATH="$MY_SOURCE_DIR/$PACKAGE_RES_NAME"

    fetch "$PACKAGE_RES_URL" --sha256=$PACKAGE_RES_SUM --output-dir="$MY_SOURCE_DIR" 
}

build() {
    TARGET_CC=$CC
    TARGET_CXX=$CXX
    TARGET_CPP=$CPP
    TARGET_AS=$AS
    TARGET_LD=$LD
    TARGET_AR=$AR
    TARGET_RANLIB=$RANLIB

    TARGET_CFLAGS=$CFLAGS
    TARGET_CXXFLAGS=$CXXFLAGS
    TARGET_CPPFLAGS=$CPPFLAGS
    TARGET_LDFLAGS=$LDFLAGS

    unset CC
    unset CXX
    unset CPP
    unset AS
    unset LD
    unset AR
    unset RANLIB

    unset CFLAGS
    unset CXXFLAGS
    unset CPPFLAGS
    unset LDFLAGS

    run tar --strip-components=1 -xf "$PACKAGE_SRC_PATH" &&
    run tar --strip-components=1 -xf "$PACKAGE_RES_PATH" &&
    ./configure \
        --target="$TARGET_TRIPLE" \
        -Dosname=android \
		-Dsysroot=$SYSROOT \
		-Dprefix=$ABI_INSTALL_DIR \
		-Dcc="$TARGET_CC" \
        -Dld="$TARGET_CC -Wl,--enable-new-dtags" \
		-Dar="$TARGET_AR" \
		-Dranlib="$TARGET_RANLIB" \
        -Duseshrplib \
        -Dusethreads &&
    makew clean &&
    makew &&
    makew install &&
    run ln -sr "$ABI_LIBRARY_DIR/perl5/$PACKAGE_VERSION/$TARGET_OS_ARCH-android/CORE/libperl.so" "$ABI_LIBRARY_DIR/libperl.so" &&
    run install -d "$ABI_INCLUDE_DIR" &&
    run ln -sr "$ABI_LIBRARY_DIR/perl5/$PACKAGE_VERSION/$TARGET_OS_ARCH-android/CORE" "$ABI_INCLUDE_DIR/perl"
}
