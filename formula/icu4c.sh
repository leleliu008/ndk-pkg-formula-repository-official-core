pkg_set summary "C/C++ and Java libraries for Unicode and globalization"
pkg_set webpage "http://site.icu-project.org/home"
pkg_set git.url "https://github.com/unicode-org/icu.git"
pkg_set src.url "https://github.com/unicode-org/icu/releases/download/release-70-1/icu4c-70_1-src.tgz"
pkg_set version "70.1"
pkg_set src.sha "8d205428c17bf13bb535300669ed28b338a157b1c01ae66d31d0d3e2d47c3fd5"
pkg_set license "ICU"
pkg_set bsystem "configure"
pkg_set bscript "source"

build0() {
    # https://www.talkwithdevices.com/archives/260
    case $NATIVE_OS_KIND in
        darwin) run "$PACKAGE_BSCRIPT_DIR/runConfigureICU" MacOSX && make ;;
        *)      run "$PACKAGE_BSCRIPT_DIR/runConfigureICU" Linux  && make ;;
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
