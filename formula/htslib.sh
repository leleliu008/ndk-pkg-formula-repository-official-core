package set summary "C library for high-throughput sequencing data formats"
package set webpage "https://www.htslib.org/"
package set git.url "https://github.com/samtools/htslib.git"
package set src.url "https://github.com/samtools/htslib/releases/download/1.15.1/htslib-1.15.1.tar.bz2"
package set src.sum "8d7f8bf9658226942eeab70af2a22aca618577eaa8fe2ed9416ee306d5351aa1"
package set license "MIT"
package set dep.pkg "zlib bzip2 xz curl"
package set bsystem "configure"

build() {
    configure --enable-libcurl
}
