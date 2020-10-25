summary="EXIF parsing library"
homepage="https://libexif.github.io"
url="https://github.com/libexif/libexif/releases/download/libexif-0_6_22-release/libexif-0.6.22.tar.xz"
sha256="5048f1c8fc509cc636c2f97f4b40c293338b6041a5652082d5ee2cf54b530c56"

build() {
    configure --enable-docs
}
