package set summary "C library for high-throughput sequencing data formats"
package set webpage "https://www.htslib.org/"
package set git.url "https://github.com/samtools/htslib.git"
package set src.url "https://github.com/samtools/htslib/releases/download/1.14/htslib-1.14.tar.bz2"
package set src.sum "ed221b8f52f4812f810eebe0cc56cd8355a5c9d21c62d142ac05ad0da147935f"
package set license "MIT"
package set dep.pkg "zlib bzip2 xz curl"
package set bsystem "configure"

build() {
    configure --enable-libcurl
}
