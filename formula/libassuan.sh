package set summary "Assuan IPC Library"
package set webpage "https://www.gnupg.org/related_software/libassuan"
package set src.url "https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.5.tar.bz2"
package set src.sum "8e8c2fcc982f9ca67dcbb1d95e2dc746b1739a4668bc20b3a3c5be632edb34e4"
package set license "GPL-3.0"
package set dep.pkg "libgpg-error"
package set bsystem "configure"

build() {
    configure --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR"
}
