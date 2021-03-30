summary "Clean C library for processing UTF-8 Unicode data"
webpage "https://juliastrings.github.io/utf8proc"
src_git "https://github.com/JuliaStrings/utf8proc.git"
src_url "https://github.com/JuliaStrings/utf8proc/archive/v2.6.1.tar.gz"
src_sum "4c06a9dc4017e8a2438ef80ee371d45868bda2237a98b26554de7a95406b283b"
license "MIT"
bsystem "cmake-make"

build() {
    cmake \
        -DUTF8PROC_INSTALL=ON \
        -DUTF8PROC_ENABLE_TESTING=OFF &&
    make -C "$SOURCE_DIR" libutf8proc.pc prefix="$ABI_INSTALL_DIR" &&
    install_pcfs "$SOURCE_DIR/libutf8proc.pc"
}
