pkg_set summary "C library for high-throughput sequencing data formats"
pkg_set webpage "https://www.htslib.org/"
pkg_set git.url "https://github.com/samtools/htslib.git"
pkg_set src.url "https://github.com/samtools/htslib/releases/download/1.15.1/htslib-1.15.1.tar.bz2"
pkg_set src.sha "8d7f8bf9658226942eeab70af2a22aca618577eaa8fe2ed9416ee306d5351aa1"
pkg_set license "MIT"
pkg_set dep.pkg "zlib bzip2 xz curl"
pkg_set bsystem "configure"

build() {
    configure --enable-libcurl
}
