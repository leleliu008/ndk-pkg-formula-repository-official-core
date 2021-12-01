package set summary "Light and powerful C++ web framework for highly scalable and resource-efficient web application"
package set webpage "https://oatpp.io/"
package set src.git "https://github.com/oatpp/oatpp.git"
package set src.url "https://github.com/oatpp/oatpp/archive/refs/tags/1.3.0.tar.gz"
package set src.sum "e1f80fa8fd7a74da6737e7fee1a4db68b4d7085a3f40e7d550752d6ff5714583"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DOATPP_BUILD_TESTS=OFF
}
