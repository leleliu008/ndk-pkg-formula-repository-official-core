summary="H.265/HEVC encoder"
homepage="http://x265.org"
url="https://bitbucket.org/multicoreware/x265_git/get/3.4.tar.gz"
sha256="7f2771799bea0f53b5ab47603d5bea46ea2a221e047a7ff398115e9976fd5f86"

prepare() {
    sed_in_place 's/list(APPEND PLATFORM_LIBS pthread)//g' source/CMakeLists.txt
}

build() {
    cmake \
    -DENABLE_PIC=ON \
    -DENABLE_CLI=ON \
    -DENABLE_SHARED=ON \
    -DENABLE_ASSEMBLY=OFF \
    -S "$SOURCE_DIR/source"
}
