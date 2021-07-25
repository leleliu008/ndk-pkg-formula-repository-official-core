package set summary "Next generation open source RPC library and framework"
package set webpage "https://grpc.io"
package set src.git "https://github.com/grpc/grpc.git"
package set src.url "https://github.com/grpc/grpc/archive/refs/tags/v1.38.1.tar.gz"
package set src.sum "f60e5b112913bf776a22c16a3053cc02cf55e60bf27a959fd54d7aaf8e2da6e8"
package set license "Apache-2.0"
package set dep.pkg "abseil c-ares openssl protobuf re2 zlib"
package set dep.cmd "pkg-config grpc_cpp_plugin"
package set bsystem "cmake"
package set ldflags "-llog -lz"

prepare() {
    sed_in_place 's|GPR_MUSL_LIBC_COMPAT|__ANDROID__|' src/core/lib/gpr/wrap_memcpy.cc
}

build() {
    cmakew \
        -DCMAKE_CXX_STANDARD=17 \
        -DCMAKE_CXX_STANDARD_REQUIRED=TRUE \
        -DBUILD_SHARED_LIBS=ON \
        -DgRPC_BUILD_TESTS=OFF \
        -DgRPC_INSTALL=ON \
        -DgRPC_ABSL_PROVIDER=package \
        -DgRPC_CARES_PROVIDER=package \
        -DgRPC_PROTOBUF_PROVIDER=package \
        -DgRPC_SSL_PROVIDER=package \
        -DgRPC_ZLIB_PROVIDER=package \
        -DgRPC_RE2_PROVIDER=package \
        -Dre2_DIR="$re2_LIBRARY_DIR/cmake/re2" \
        -Dabsl_DIR="$abseil_LIBRARY_DIR/cmake/absl" \
        -Dc-ares_INCLUDE_DIR="$c_ares_INCLUDE_DIR" \
        -Dc-ares_LIBRARY="$c_ares_LIBRARY_DIR/libcares.so" \
        -DProtobuf_INCLUDE_DIR="$protobuf_INCLUDE_DIR" \
        -DProtobuf_PROTOC_LIBRARY="$protobuf_LIBRARY_DIR/libprotoc.so" \
        -DProtobuf_LIBRARIES="'$protobuf_LIBRARY_DIR/libprotoc.so;$protobuf_LIBRARY_DIR/libprotobuf.so'" \
        -DOPENSSL_INCLUDE_DIR="$openssl_INCLUDE_DIR" \
        -DOPENSSL_SSL_LIBRARY="$openssl_LIBRARY_DIR/libssl.so" \
        -DOPENSSL_CRYPTO_LIBRARY="$openssl_LIBRARY_DIR/libcrypto.so" \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
