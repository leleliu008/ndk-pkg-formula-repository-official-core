package set summary "C/C++ and Java libraries for Unicode and globalization"
package set webpage "http://site.icu-project.org/home"
package set src.git "https://github.com/unicode-org/icu.git"
package set src.url "https://github.com/unicode-org/icu/releases/download/release-69-1/icu4c-69_1-src.tgz"
package set version "69.1"
package set src.sum "4cba7b7acd1d3c42c44bb0c14be6637098c7faf2b330ce876bc5f3b915d09745"
package set license "ICU"
package set bsystem "configure"
package set sourced "source"

build0() {
    # https://www.talkwithdevices.com/archives/260
    case $NATIVE_OS_KIND in
        darwin) run "$SOURCE_DIR/runConfigureICU" MacOSX && make ;;
        *)      run "$SOURCE_DIR/runConfigureICU" Linux  && make ;;
    esac
}

build() {
    configure \
        --with-cross-build="$NATIVE_BUILD_DIR" \
        --enable-release \
        --enable-tools \
        --enable-fuzzer \
        --disable-tests \
        --disable-samples
}
