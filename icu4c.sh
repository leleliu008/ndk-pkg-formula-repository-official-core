summary "C/C++ and Java libraries for Unicode and globalization"
webpage "http://site.icu-project.org/home"
version "67.1"
src_url "https://github.com/unicode-org/icu/releases/download/release-67-1/icu4c-67_1-src.tgz"
src_sum "94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc"
license "ICU"
bsystem "configure"
sourced "source"

build0() {
    # https://www.talkwithdevices.com/archives/260
    run "$SOURCE_DIR/runConfigureICU" Linux && make
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
