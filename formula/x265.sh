package set summary "H.265/HEVC encoder"
package set webpage "http://x265.org"
package set git.url "https://bitbucket.org/multicoreware/x265_git.git"
package set src.url "https://bitbucket.org/multicoreware/x265_git/get/3.5.tar.gz"
package set src.sum "5ca3403c08de4716719575ec56c686b1eb55b078c0fe50a064dcf1ac20af1618"
package set license "GPL-2.0-only"
package set bsystem "cmake"
package set bscript "source"

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
