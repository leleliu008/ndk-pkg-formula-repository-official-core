package set summary "Interpreter for PostScript and PDF"
package set webpage "https://www.ghostscript.com/"
package set src.url "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9550/ghostpdl-9.55.0.tar.gz"
package set src.sum "b73cdfcb7b1c2a305748d23b00a765bcba48310564940b1eff1457f19f898172"
package set license "AGPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set dep.pkg "fontconfig jbig2dec libidn lcms2 openjpeg"
package set bsystem "configure"
package set binsrcd "yes"

prepare() {
    rm -rf expat
    rm -rf freetype
    rm -rf jbig2dec
    rm -rf jpeg
    rm -rf jpegxr
    rm -rf lcms2mt
    rm -rf libpng
    rm -rf openjpeg
    rm -rf tiff
    rm -rf zlib
    sed_in_place 's|-lpthread||g' configure
}

build() {
    export CPPFLAGS="$CPPFLAGS -I$freetype2_with_harfbuzz_INCLUDE_DIR/freetype2"
    export ac_cv_lib_pthread_pthread_create=yes
    configure \
        --disable-compile-inits \
        --disable-cups \
        --disable-gtk \
        --with-system-libtiff \
        --without-x
}
