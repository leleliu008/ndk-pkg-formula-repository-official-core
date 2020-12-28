summary "Clean C library for processing UTF-8 Unicode data"
webpage "https://juliastrings.github.io/utf8proc"
src_url "https://github.com/JuliaStrings/utf8proc/archive/v2.5.0.tar.gz"
src_sum "d4e8dfc898cfd062493cb7f42d95d70ccdd3a4cd4d90bec0c71b47cca688f1be"
license "MIT"

build() {
    cmake \
        -DUTF8PROC_INSTALL=ON \
        -DUTF8PROC_ENABLE_TESTING=OFF &&
    make -C "$SOURCE_DIR" libutf8proc.pc &&
    install_pcfs "$SOURCE_DIR/libutf8proc.pc"
}
