summary  "C/C++ and Java libraries for Unicode and globalization"
homepage "http://site.icu-project.org/home"
url      "https://github.com/unicode-org/icu/releases/download/release-67-1/icu4c-67_1-src.tgz"
version  "67.1"
sha256   "94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc"
license  "ICU"
requirements "make"

# https://www.talkwithdevices.com/archives/260
prepare() {
    SOURCE_DIR="$WORKING_DIR/source" &&
    mkdir "$SOURCE_DIR/build.d.tmp" &&
    cd    "$SOURCE_DIR/build.d.tmp" &&
    "$SOURCE_DIR/runConfigureICU" Linux &&
    make
}

build() {
    configure \
        --with-cross-build="$SOURCE_DIR/build.d.tmp" \
        --enable-release \
        --enable-tools \
        --enable-fuzzer \
        --disable-tests \
        --disable-samples
}
