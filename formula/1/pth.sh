pkg_set summary "GNU Portable THreads"
pkg_set webpage "https://www.gnu.org/software/pth"
pkg_set src.url "https://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz"
pkg_set src.sha "72353660c5a2caafd601b20e12e75d865fd88f6cf1a088b306a3963f0bc77232"

build() {
    configure \
        --disable-profile \
        --disable-tests \
        --enable-batch \
        --enable-pthread \
        --enable-optimize
}
