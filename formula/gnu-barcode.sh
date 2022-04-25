pkg_set summary "Convert text strings to printed bars"
pkg_set webpage "https://www.gnu.org/software/barcode/"
pkg_set src.url "https://ftp.gnu.org/gnu/barcode/barcode-0.99.tar.gz"
pkg_set src.sha "7c031cf3eb811242f53664379aebbdd9fae0b7b26b5e5d584c31a9f338154b64"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "gettext"
pkg_set bsystem "configure"

prepare() {
    # https://github.com/android/ndk/issues/1409
    sed_in_place 's|int streaming;|int streaming __attribute__((common));|' barcode.h
}

build() {
    export CPPFLAGS="$CPPFLAGS -I$gettext_INSTALL_DIR/share/gettext"
    export ac_cv_func_calloc_0_nonnull=yes
    configure
}
