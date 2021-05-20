package set summary "Clean C library for processing UTF-8 Unicode data"
package set webpage "https://juliastrings.github.io/utf8proc"
package set src.git "https://github.com/JuliaStrings/utf8proc.git"
package set src.url "https://github.com/JuliaStrings/utf8proc/archive/v2.6.1.tar.gz"
package set src.sum "4c06a9dc4017e8a2438ef80ee371d45868bda2237a98b26554de7a95406b283b"
package set license "MIT"
package set bsystem "cmake-make"

build() {
    cmakew \
        -DUTF8PROC_INSTALL=ON \
        -DUTF8PROC_ENABLE_TESTING=OFF &&
    makew -C "$SOURCE_DIR" libutf8proc.pc prefix="$ABI_INSTALL_DIR" &&
    install_pcfs "$SOURCE_DIR/libutf8proc.pc"
}
