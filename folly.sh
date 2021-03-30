summary "Collection of reusable C++ library artifacts developed at Facebook"
src_git "https://github.com/facebook/folly.git"
src_url "https://github.com/facebook/folly/archive/v2021.02.15.00.tar.gz"
src_sum "0e40e7fd536700ef149ddffb72fa17f92f139738d057c2a6d0a6e5736fa76de0"
license "Apache-2.0"
bsystem "cmake"
require "pkg-config"
depends "boost double-conversion fmt glog libevent openssl bzip2 lz4 xz zstd snappy libsodium"

build() {
    cmake \
        -DBoost_DIR="$boost_LIBRARY_DIR/cmake/Boost-1.73.0" \
        -DBOOST_LINK_STATIC=ON \
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
        -DOPENSSL_SSL_LIBRARY="$openssl_LIBRARY_DIR/libssl.a" \
        -DOPENSSL_CRYPTO_LIBRARY="$openssl_LIBRARY_DIR/libcrypto.a" \
        -DLIBEVENT_INCLUDE_DIR="$libevent_INCLUDE_DIR" \
        -DLIBEVENT_LIB="$libevent_LIBRARY_DIR/libevent.a" \
        -DZLIB_LIBRARY="$zlib_LIBRARY_DIR/libz.a" \
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
        -DLIBSODIUM_INCLUDE_DIR="$libsodium_INCLUDE_DIR" \
        -DLIBSODIUM_LIBRARY="$libsodium_LIBRARY_DIR/libsodium.a" \
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
