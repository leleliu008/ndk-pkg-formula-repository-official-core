package set summary "C/C++ and Java libraries for Unicode and globalization"
package set webpage "http://site.icu-project.org/home"
package set git.url "https://github.com/unicode-org/icu.git"
package set src.url "https://github.com/unicode-org/icu/releases/download/release-70-1/icu4c-70_1-src.tgz"
package set version "70.1"
package set src.sum "8d205428c17bf13bb535300669ed28b338a157b1c01ae66d31d0d3e2d47c3fd5"
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
