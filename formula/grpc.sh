pkg_set summary "Next generation open source RPC library and framework"
pkg_set webpage "https://grpc.io"
pkg_set git.url "https://github.com/grpc/grpc.git"
pkg_set src.url "https://github.com/grpc/grpc/archive/refs/tags/v1.46.3.tar.gz"
pkg_set src.sha "d6cbf22cb5007af71b61c6be316a79397469c58c82a942552a62e708bce60964"
pkg_set license "Apache-2.0"
pkg_set dep.pkg "abseil c-ares openssl protobuf re2"
pkg_set dep.cmd "pkg-config grpc_cpp_plugin"
pkg_set bsystem "cmake"

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
