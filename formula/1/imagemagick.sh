package set summary "Tools and libraries to manipulate images in many formats"
package set webpage "https://imagemagick.org/"
package set src.git "https://github.com/ImageMagick/ImageMagick.git"
package set src.url "https://www.imagemagick.org/download/releases/ImageMagick-7.1.0-14.tar.xz"
package set version "7.1.0.14"
package set src.sum "8f08592b759eb8ff948814d4329fab2004042c5f4bd185315b066aca76f69f76"
package set license "ImageMagick"
package set dep.cmd "pkg-config"
package set dep.pkg "freetype2 ghostscript libjpeg-turbo libheif liblqr libpng libtiff lcms2 openexr openjpeg webp libxml2 xz bzip2"
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
        --with-gs-font-dir="${HOMEBREW_PREFIX}/share/ghostscript/fonts" \
        --with-lqr \
        --without-x \
        --without-wmf \
        --without-fftw \
        --without-pango \
        --disable-opencl \
        --enable-openmp \
        ac_cv_prog_c_openmp="'-Xpreprocessor -fopenmp'" \
        ac_cv_prog_cxx_openmp="'-Xpreprocessor -fopenmp" \
        LDFLAGS="'-lomp -lz'"
}
