package set summary "Tools and libraries to manipulate images in many formats"
package set webpage "https://imagemagick.org/"
package set git.url "https://github.com/ImageMagick/ImageMagick.git"
package set src.url "https://www.imagemagick.org/download/releases/ImageMagick-7.1.0-14.tar.xz"
package set version "7.1.0.14"
package set src.sum "8f08592b759eb8ff948814d4329fab2004042c5f4bd185315b066aca76f69f76"
package set license "ImageMagick"
package set dep.pkg "ghostscript libheif liblqr libtool openexr libwebp xz bzip2"
package set dep.cmd "pkg-config"
package set bsystem "configure"

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
