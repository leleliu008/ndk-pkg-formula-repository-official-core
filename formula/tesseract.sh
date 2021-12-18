package set summary "OCR (Optical Character Recognition) engine"
package set src.git "https://github.com/tesseract-ocr/tesseract.git"
package set src.url "https://github.com/tesseract-ocr/tesseract/archive/5.0.0.tar.gz"
package set src.sum "72467b7876dc0c39ef7fbcb0f793f73aee1c78d9fabab3ab19cbac1eb42e9fed"
package set license "Apache-2.0"
package set dep.pkg "leptonica icu4c pango libglob cpu_features"
package set dep.cmd "pkg-config"
package set bsystem "cmake"
package set cdefine "ANDROID"

prepare() {
    sed_in_place 's/x86|AMD64/i686|x86_64/' CMakeLists.txt
}

build() {
    export CPPFLAGS="$CPPFLAGS -I$cpu_features_INCLUDE_DIR/ndk_compat"
    export LDFLAGS="$LDFLAGS $libglob_LIBRARY_DIR/libglob.a"
    export LDFLAGS="$LDFLAGS $cpu_features_LIBRARY_DIR/libndk_compat.so"
    cmakew \
        -DENABLE_LTO=ON \
        -DUSE_SYSTEM_ICU=ON \
        -DDISABLE_ARCHIVE=OFF \
        -DDISABLE_CURL=OFF \
        -DBUILD_TESTS=OFF \
        -DBUILD_TRAINING_TOOLS=ON \
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so"
}
