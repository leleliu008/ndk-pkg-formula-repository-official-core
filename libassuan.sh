summary="Assuan IPC Library"
homepage="https://www.gnupg.org/related_software/libassuan"
url="https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.3.tar.bz2"
sha256="91bcb0403866b4e7c4bc1cc52ed4c364a9b5414b3994f718c70303f7f765e702"
license="GPL-3.0"
dependencies="libgpg-error"

build() {
    configure --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR"
}
