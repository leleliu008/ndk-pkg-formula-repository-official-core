package set summary "H.265/HEVC encoder"
package set webpage "http://x265.org"
package set src.url "https://bitbucket.org/multicoreware/x265_git/get/3.4.tar.gz"
package set src.sum "7f2771799bea0f53b5ab47603d5bea46ea2a221e047a7ff398115e9976fd5f86"
package set license "GPL-2.0-only"
package set bsystem "cmake"
package set sourced "source"

prepare() {
    sed_in_place 's/list(APPEND PLATFORM_LIBS pthread)//g' CMakeLists.txt
}

build() {
    cmakew \
        -DENABLE_PIC=ON \
        -DENABLE_CLI=ON \
        -DENABLE_SHARED=ON \
        -DENABLE_ASSEMBLY=OFF
}
