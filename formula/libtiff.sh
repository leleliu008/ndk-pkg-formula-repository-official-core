pkg_set summary "TIFF library and utilities"
pkg_set webpage "https://libtiff.gitlab.io/libtiff"
pkg_set git.url "https://gitlab.com/libtiff/libtiff.git"
pkg_set src.url "https://download.osgeo.org/libtiff/tiff-4.3.0.tar.gz"
pkg_set src.sha "0e46e5acb087ce7d1ac53cf4f56a09b221537fc86dfc5daaad1c2e89e1b37ac8"
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
        static) cmakew -DBUILD_SHARED_LIBS=OFF $CMAKE_CONFIG_COMMON_OPTIONS ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  $CMAKE_CONFIG_COMMON_OPTIONS ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF $CMAKE_CONFIG_COMMON_OPTIONS
                cmakew -DBUILD_SHARED_LIBS=ON  $CMAKE_CONFIG_COMMON_OPTIONS
    esac
}
