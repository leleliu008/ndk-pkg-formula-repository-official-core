package set summary "C++ library and cmdline tools for parsing and manipulating VCF files."
package set git.url "https://github.com/vcflib/vcflib.git"
#package set src.url "https://github.com/vcflib/vcflib/archive/refs/tags/v1.0.2.tar.gz"
#package set src.url "dir:///tmp/tmp.AQJ4eClDrE"
#package set src.sum "a3ef230864328d96eb3b086bf5bbcc34d6699710c358444621f6c3e3f507c910"
package set license "MIT"
package set dep.pkg "htslib"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_DOC=OFF \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARIES="$bzip2_LIBRARY_DIR/libbz2.so" \
        -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
        -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.a"
}
