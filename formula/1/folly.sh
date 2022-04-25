pkg_set summary "Collection of reusable C++ library artifacts developed at Facebook"
pkg_set git.url "https://github.com/facebook/folly.git"
pkg_set src.url "https://github.com/facebook/folly/archive/v2021.12.20.00.tar.gz"
pkg_set src.sha "1e780708cd23cb01b62b4db09ef02ba36f8949a8a8115d3398fd395e748a9343"
pkg_set license "Apache-2.0"
pkg_set dep.pkg "boost double-conversion fmt glog libevent lz4 snappy libsodium"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBoost_DIR="$boost_LIBRARY_DIR/cmake/Boost-1.73.0" \
        -DBOOST_LINK_STATIC=ON \
        -Dgflags_DIR="$gflags_LIBRARY_DIR/cmake/gflags" \
        -DDOUBLE_CONVERSION_INCLUDE_DIR="$double_conversion_INCLUDE_DIR" \
        -DDOUBLE_CONVERSION_LIBRARY="$double_conversion_LIBRARY_DIR/libdouble-conversion.so" \
        -DLIBGFLAGS_INCLUDE_DIR="$gflags_INCLUDE_DIR" \
        -DLIBGFLAGS_LIBRARY="$gflags_LIBRARY_DIR/libgflags.so" \
        -DGLOG_INCLUDE_DIR="$glog_INCLUDE_DIR" \
        -DGLOG_LIBRARY_RELEASE="$glog_LIBRARY_DIR/libglog.so" \
        -DLIBFMT_INCLUDE_DIR="$fmt_INCLUDE_DIR" \
        -DLIBFMT_LIBRARY="$fmt_LIBRARY_DIR/libfmt.so" \
        -DOPENSSL_INCLUDE_DIR="$openssl_INCLUDE_DIR" \
        -DOPENSSL_SSL_LIBRARY="$openssl_LIBRARY_DIR/libssl.so" \
        -DOPENSSL_CRYPTO_LIBRARY="$openssl_LIBRARY_DIR/libcrypto.so" \
        -DLIBEVENT_INCLUDE_DIR="$libevent_INCLUDE_DIR" \
        -DLIBEVENT_LIB="$libevent_LIBRARY_DIR/libevent.so" \
        -DZLIB_LIBRARY="$zlib_LIBRARY_DIR/libz.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARIES="$bzip2_LIBRARY_DIR/libbz2.so" \
        -DLZ4_INCLUDE_DIR="$lz4_INCLUDE_DIR" \
        -DLZ4_LIBRARY_RELEASE="$lz4_LIBRARY_DIR/liblz4.so" \
        -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
        -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.so" \
        -DZSTD_INCLUDE_DIR="$zstd_INCLUDE_DIR" \
        -DZSTD_LIBRARY_RELEASE="$zstd_LIBRARY_DIR/libzstd.so" \
        -DSNAPPY_INCLUDE_DIR="$snappy_INCLUDE_DIR" \
        -DSNAPPY_LIBRARY_RELEASE="$snappy_LIBRARY_DIR/libsnappy.so" \
        -DLIBSODIUM_INCLUDE_DIR="$libsodium_INCLUDE_DIR" \
        -DLIBSODIUM_LIBRARY="$libsodium_LIBRARY_DIR/libsodium.so" \
        -DHAVE_VSNPRINTF_ERRORS_EXITCODE=0 \
        -DHAVE_VSNPRINTF_ERRORS_EXITCODE__TRYRUN_OUTPUT=a \
        -DFOLLY_HAVE_WCHAR_SUPPORT_EXITCODE=0 \
        -DFOLLY_HAVE_WCHAR_SUPPORT_EXITCODE__TRYRUN_OUTPUT=a \
        -DFOLLY_HAVE_LINUX_VDSO_EXITCODE=1 \
        -DFOLLY_HAVE_LINUX_VDSO_EXITCODE__TRYRUN_OUTPUT=a \
        -DFOLLY_HAVE_UNALIGNED_ACCESS_EXITCODE=0 \
        -DFOLLY_HAVE_UNALIGNED_ACCESS_EXITCODE__TRYRUN_OUTPUT=a \
        -DFOLLY_HAVE_WEAK_SYMBOLS_EXITCODE=1 \
        -DFOLLY_HAVE_WEAK_SYMBOLS_EXITCODE__TRYRUN_OUTPUT=a
}
