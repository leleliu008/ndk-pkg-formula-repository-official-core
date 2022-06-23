pkg_set summary "Tools and libraries to manipulate images in many formats"
pkg_set webpage "https://imagemagick.org/"
pkg_set src.url "https://imagemagick.org/archive/releases/ImageMagick-7.1.0-39.tar.xz"
pkg_set git.url "https://github.com/ImageMagick/ImageMagick.git"
pkg_set version "7.1.0.39"
pkg_set src.sha "a82c632449a790b6ad78d281b94bdb17a6054ed8afd4f2f21e8304b1f2d2416f"
pkg_set license "ImageMagick"
pkg_set dep.pkg "ghostscript libheif liblqr libtool openexr libwebp xz bzip2"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure \
        --with-freetype=yes \
        --with-gvc=no \
        --with-modules \
        --with-openjp2 \
        --with-openexr \
        --with-webp=yes \
        --with-heic=yes \
        --with-gslib \
        --with-pango \
        --with-lqr \
        --without-x \
        --without-wmf \
        --without-fftw \
        --disable-opencl
}
