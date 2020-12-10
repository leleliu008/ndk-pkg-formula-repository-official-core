summary  "Arbitrary precision numeric processing language"
homepage "https://www.gnu.org/software/bc"
url      "https://ftp.gnu.org/gnu/bc/bc-1.07.1.tar.gz"
sha256   "62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a"
license  "GPL-3.0"
requirements "bison flex make"
dependencies "readline"

prepare() {
    NATIVE_BUILD_DIR="$SOURCE_DIR/$TIMESTAMP_UNIX/native"
    mkdir -p "$NATIVE_BUILD_DIR" &&
    (
        cd "$NATIVE_BUILD_DIR" &&
        $SOURCE_DIR/configure --without-readline --without-libedit &&
        $MAKE clean &&
        $MAKE
    ) 
}

build() {
    install -d "$BUILD_DIR/bc" &&
    cp "$NATIVE_BUILD_DIR/bc/libmath.h" "$BUILD_DIR/bc"
    touch -t 190001010000 $BUILD_DIR/bc/libmath.h &&
    configure \
        --without-libedit \
        --with-readline="$readline_INSTALL_DIR"
}
