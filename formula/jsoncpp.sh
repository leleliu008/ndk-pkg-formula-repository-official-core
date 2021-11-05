package set summary "Library for interacting with JSON"
package set src.git "https://github.com/open-source-parsers/jsoncpp.git"
package set src.url "https://github.com/open-source-parsers/jsoncpp/archive/1.9.4.tar.gz"
package set src.sum "e34a628a8142643b976c7233ef381457efad79468c67cb1ae0b83a33d7493999"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DJSONCPP_WITH_EXAMPLE=OFF \
        -DJSONCPP_WITH_TESTS=OFF \
        -DJSONCPP_WITH_POST_BUILD_UNITTEST=OFF \
        -DJSONCPP_WITH_WARNING_AS_ERROR=OFF \
        -DJSONCPP_WITH_PKGCONFIG_SUPPORT=ON \
        -DJSONCPP_WITH_CMAKE_PACKAGE=ON \
        -DJSONCPP_USE_SECURE_MEMORY=ON \
        -DJSONCPP_WITH_STRICT_ISO=ON
}
