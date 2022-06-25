pkg_set summary "TIFF library and utilities"
pkg_set webpage "https://libtiff.gitlab.io/libtiff"
pkg_set git.url "https://gitlab.com/libtiff/libtiff.git"
pkg_set src.url "https://fossies.org/linux/misc/tiff-4.4.0.tar.gz"
pkg_set src.sha "917223b37538959aca3b790d2d73aa6e626b688e02dcda272aec24c2f498abed"
pkg_set dep.pkg "zstd"
pkg_set bsystem "cmake"
pkg_set license "libtiff|COPYRIGHT|https://gitlab.com/libtiff/libtiff/-/raw/master/COPYRIGHT"
pkg_set developer "Sam+Leffler Even+Rouault Bob+Friesenhahn|bfriesen@GraphicsMagick.org Frank+Warmerdam Andrey+Kiselev|dron@ak4719.spb.edu Joris+Van+Damme Lee+Howard"

build() {
    CMAKE_CONFIG_COMMON_OPTIONS='
        -Dzstd=ON
        -Dzlib=ON
        -Dlzma=ON
        -Dlzw=ON
        -Dwebp=OFF
        -Djpeg=OFF'

    case $INSTALL_LIB in
        yes)    cmakew                         $CMAKE_CONFIG_COMMON_OPTIONS ;;
        static) cmakew -DBUILD_SHARED_LIBS=OFF $CMAKE_CONFIG_COMMON_OPTIONS ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  $CMAKE_CONFIG_COMMON_OPTIONS ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF $CMAKE_CONFIG_COMMON_OPTIONS
                cmakew -DBUILD_SHARED_LIBS=ON  $CMAKE_CONFIG_COMMON_OPTIONS
    esac
}
