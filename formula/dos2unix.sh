pkg_set summary "Convert text between DOS, UNIX, and Mac formats"
pkg_set webpage "https://waterlan.home.xs4all.nl/dos2unix.html"
pkg_set src.url "https://waterlan.home.xs4all.nl/dos2unix/dos2unix-7.4.3.tar.gz"
pkg_set src.sha "b68db41956daf933828423aa30510e00c12d29ef5916e715e8d4e694fe66ca72"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "liblanginfo"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

build() {
    gmakew clean
    gmakew CC=$CC CPP="'$CPP'" STRIP=$STRIP CFLAGS_USER="'$CFLAGS'" LDFLAGS_USER="'$LDFLAGS'" D2U_OS=android ENABLE_NLS=
    gmakew install prefix="$TARGET_INSTALL_DIR"
}
