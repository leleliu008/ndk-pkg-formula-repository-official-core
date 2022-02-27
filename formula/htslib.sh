package set summary "C library for high-throughput sequencing data formats"
package set webpage "https://www.htslib.org/"
package set git.url "https://github.com/samtools/htslib.git"
package set src.url "https://github.com/samtools/htslib/releases/download/1.15/htslib-1.15.tar.bz2"
package set src.sum "1a9f49911503a22f56817cc82ea9b87fb7e7467b5ff989ca5aa61c12e7d532d9"
package set license "MIT"
package set dep.pkg "zlib bzip2 xz curl"
package set bsystem "configure"

build() {
    configure --enable-libcurl
}
