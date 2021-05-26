package set summary "Assuan IPC Library"
package set webpage "https://www.gnupg.org/related_software/libassuan"
package set src.url "https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.3.tar.bz2"
package set src.sum "91bcb0403866b4e7c4bc1cc52ed4c364a9b5414b3994f718c70303f7f765e702"
package set license "GPL-3.0"
package set dep.pkg "libgpg-error"
package set bsystem "configure"

build() {
    configure --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR"
}
