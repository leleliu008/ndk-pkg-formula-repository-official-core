summary "EXIF parsing library"
webpage "https://libexif.github.io"
src_url "https://github.com/libexif/libexif/releases/download/libexif-0_6_22-release/libexif-0.6.22.tar.xz"
src_sum "5048f1c8fc509cc636c2f97f4b40c293338b6041a5652082d5ee2cf54b530c56"
require "make"

build() {
    configure --enable-docs
}
