pkg_set summary "Portable Foreign Function Interface library"
pkg_set webpage "https://sourceware.org/libffi"
pkg_set git.url "https://github.com/libffi/libffi.git"
pkg_set src.url "https://github.com/libffi/libffi/releases/download/v3.4.2/libffi-3.4.2.tar.gz"
pkg_set src.sha "540fb721619a6aba3bdeef7d940d8e9e0e6d2c193595bc243241b77ff9e93620"
pkg_set license "MIT"
pkg_set bsystem "configure"

build() {
    unset CFLAGS
    unset CPPFLAGS
    unset LDFLAGS
    configure \
        --with-sysroot="$SYSROOT" \
        --disable-symvers \
        --disable-docs
}
