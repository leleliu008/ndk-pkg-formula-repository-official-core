pkg_set summary "Light and powerful C++ web framework for highly scalable and resource-efficient web application"
pkg_set webpage "https://oatpp.io/"
pkg_set git.url "https://github.com/oatpp/oatpp.git"
pkg_set src.url "https://github.com/oatpp/oatpp/archive/refs/tags/1.3.0.tar.gz"
pkg_set src.sha "e1f80fa8fd7a74da6737e7fee1a4db68b4d7085a3f40e7d550752d6ff5714583"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew -DOATPP_BUILD_TESTS=OFF
}
