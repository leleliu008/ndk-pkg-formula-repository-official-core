package set summary "C/C++ and Java libraries for Unicode and globalization"
package set webpage "http://site.icu-project.org/home"
package set version "67.1"
package set src.url "https://github.com/unicode-org/icu/releases/download/release-67-1/icu4c-67_1-src.tgz"
package set src.sum "94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc"
package set license "ICU"
package set bsystem "configure"
package set sourced "source"

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
