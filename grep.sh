summary="GNU grep, egrep and fgrep"
homepage="https://www.gnu.org/software/grep"
url="https://ftp.gnu.org/gnu/grep/grep-3.4.tar.xz"
sha256="58e6751c41a7c25bfc6e9363a41786cff3ba5709cf11d5ad903cf7cce31cc3fb"
license="GPL-3.0-or-later"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;

build() {
    configure \
        --enable-threads=posix \
        --disable-assert \
        --disable-gcc-warnings \
        --with-included-regex
}
