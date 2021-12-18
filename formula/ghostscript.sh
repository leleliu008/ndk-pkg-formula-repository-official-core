package set summary "Interpreter for PostScript and PDF"
package set webpage "https://www.ghostscript.com/"
package set src.url "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9550/ghostpdl-9.55.0.tar.gz"
package set src.sum "b73cdfcb7b1c2a305748d23b00a765bcba48310564940b1eff1457f19f898172"
package set license "AGPL-3.0-or-later"
package set dep.pkg "fontconfig jbig2dec libidn lcms2 openjpeg tesseract"
package set dep.cmd "pkg-config"
package set bsystem "configure"
package set binsrcd "yes"

prepare() {
    rm -rf expat
    rm -rf freetype
    rm -rf jbig2dec
    rm -rf jpeg
    rm -rf lcms2mt
    rm -rf libpng
    rm -rf openjpeg
    rm -rf tiff
    rm -rf zlib
    rm -rf tesseract
    sed_in_place 's|-lpthread||g' configure
    sed_in_place 's|nl_langinfo(CODESET)|"UTF-8"|' contrib/opvp/gdevopvp.c

    fetch "http://git.ghostscript.com/?p=ghostpdl.git;a=patch;h=830afae5454dea3bff903869d82022306890a96c" --output-dir="$WORK_DIR/$TIMESTAMP_UNIX" --output-name=patch.txt --sha256=9c282e3f732b5c182ab761e187850d9f4c29d938a93e3785d9cb6ced13111d6c || return 1
    run "patch -p1 < $WORK_DIR/$TIMESTAMP_UNIX/patch.txt"
}

build() {
    run ln -s "$PKG_CONFIG" "$TARGET_TRIPLE-pkg-config" || return 1
    export PATH="$PWD:$PATH"
    export CPPFLAGS="$CPPFLAGS -I$freetype2_with_harfbuzz_INCLUDE_DIR/freetype2"
    export ac_cv_lib_pthread_pthread_create=yes
    configure \
        --disable-compile-inits \
        --disable-cups \
        --disable-gtk \
        --with-system-libtiff \
        --without-x &&
    run make soclean &&
    run make install-so
}
