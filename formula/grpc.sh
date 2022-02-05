package set summary "Next generation open source RPC library and framework"
package set webpage "https://grpc.io"
package set git.url "https://github.com/grpc/grpc.git"
package set src.url "https://github.com/grpc/grpc/archive/refs/tags/v1.43.2.tar.gz"
package set src.sum "b74ce7d26fe187970d1d8e2c06a5d3391122f7bc1fdce569aff5e435fb8fe780"
package set license "Apache-2.0"
package set dep.pkg "abseil c-ares openssl protobuf re2"
package set dep.cmd "pkg-config grpc_cpp_plugin"
package set bsystem "cmake"

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
        -DgRPC_RE2_PROVIDER=package
}
