summary  "Collection of reusable C++ library artifacts developed at Facebook"
homepage "https://github.com/facebook/folly"
url      "https://github.com/facebook/folly/archive/v2020.11.09.00.tar.gz"
sha256   "24d5df65d4ef21b229b7396605a7375b753ca8950fe655ea33fdf1e2d5218dff"
license  "Apache-2.0"
requirements "cmake make pkg-config"
dependencies "boost double-conversion fmt glog libevent openssl libaio bzip2 lz4 xz zstd snappy"

build() {
    set -x
    export CPPFLAGS="$CPPFLAGS -D__GLIBCXX__=1"
    export LDFLAGS="$LDFLAGS $SYSTEM_LIBRARY_DIR/libstdc++.a"
    cmake \
        -DBoost_DIR="$boost_LIBRARY_DIR/cmake/Boost-1.73.0" \
        -DDOUBLE_CONVERSION_INCLUDE_DIR="$double_conversion_INCLUDE_DIR" \
        -DDOUBLE_CONVERSION_LIBRARY="$double_conversion_LIBRARY_DIR/libdouble-conversion.a" \
        -Dgflags_DIR="$gflags_LIBRARY_DIR/cmake/gflags" \
        -DLIBGFLAGS_INCLUDE_DIR="$gflags_INCLUDE_DIR" \
        -DLIBGFLAGS_LIBRARY="$gflags_LIBRARY_DIR/libgflags.a" \
        -DGLOG_INCLUDE_DIR="$glog_INCLUDE_DIR" \
        -DGLOG_LIBRARY_RELEASE="$glog_LIBRARY_DIR/libglog.a" \
        -DLIBFMT_INCLUDE_DIR="$fmt_INCLUDE_DIR" \
        -DLIBFMT_LIBRARY="$fmt_LIBRARY_DIR/libfmt.a" \
        -DOPENSSL_INCLUDE_DIR="$openssl_INCLUDE_DIR" \
        -DOPENSSL_LIBRARIES="$openssl_LIBRARY_DIR/libssl.a" \
        -DLIBEVENT_INCLUDE_DIR="$libevent_INCLUDE_DIR" \
        -DLIBEVENT_LIB="$libevent_LIBRARY_DIR/libevent.a" \
        -DLIBAIO_INCLUDE_DIR="$libaio_INCLUDE_DIR" \
        -DLIBAIO_LIBRARY="$libaio_LIBRARY_DIR/libaio.a" \
        -DZLIB_LIBRARY="$SYSTEM_LIBRARY_DIR/libz.a" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARIES="$bzip2_LIBRARY_DIR/libbz2.a" \
        -DLZ4_INCLUDE_DIR="$lz4_INCLUDE_DIR" \
        -DLZ4_LIBRARY_RELEASE="$lz4_LIBRARY_DIR/liblz4.a" \
        -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
        -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.a" \
        -DZSTD_INCLUDE_DIR="$zstd_INCLUDE_DIR" \
        -DZSTD_LIBRARY_RELEASE="$zstd_LIBRARY_DIR/libzstd.a" \
        -DSNAPPY_INCLUDE_DIR="$snappy_INCLUDE_DIR" \
        -DSNAPPY_LIBRARY_RELEASE="$snappy_LIBRARY_DIR/libsnappy.a" \
        -DHAVE_VSNPRINTF_ERRORS_EXITCODE=0 \
        -DFOLLY_HAVE_WCHAR_SUPPORT_EXITCODE=0 \
        -DFOLLY_HAVE_LINUX_VDSO_EXITCODE=0 \
        -DFOLLY_HAVE_UNALIGNED_ACCESS_EXITCODE=0
    set +x
}
