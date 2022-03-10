package set summary "Convert text strings to printed bars"
package set webpage "https://www.gnu.org/software/barcode/"
package set src.url "https://ftp.gnu.org/gnu/barcode/barcode-0.99.tar.gz"
package set src.sum "7c031cf3eb811242f53664379aebbdd9fae0b7b26b5e5d584c31a9f338154b64"
package set license "GPL-3.0"
package set dep.pkg "gettext"
package set bsystem "configure"

prepare() {
    # https://github.com/android/ndk/issues/1409
    sed_in_place 's|int streaming;|int streaming __attribute__((common));|' barcode.h
}

build() {
    export CPPFLAGS="$CPPFLAGS -I$gettext_INSTALL_DIR/share/gettext"
    export ac_cv_func_calloc_0_nonnull=yes
    configure
}
