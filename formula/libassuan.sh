pkg_set summary "Assuan IPC Library"
pkg_set webpage "https://www.gnupg.org/related_software/libassuan"
pkg_set git.url "https://dev.gnupg.org/source/libassuan.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.5.tar.bz2"
pkg_set src.sha "8e8c2fcc982f9ca67dcbb1d95e2dc746b1739a4668bc20b3a3c5be632edb34e4"
pkg_set license "GPL-3.0-or-later;COPYING;https://dev.gnupg.org/source/libassuan/browse/master/COPYING"
pkg_set dep.pkg "libgpg-error"
pkg_set bsystem "configure"

build() {
    configure --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR"
}
