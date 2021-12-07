package set summary "Library for reading, processing and writing images"
package set webpage "https://openimageio.org/"
package set license "BSD-3-Clause"
package set src.git "https://github.com/OpenImageIO/oiio.git"
package set src.url "https://github.com/OpenImageIO/oiio/archive/v2.3.10.0.tar.gz"
package set src.sum "3b8a43135792373da7d8897a5937dce96cfd2a2bfb92ff8c51a870df1e9cfbd9"
package set dep.pkg "boost ffmpeg freetype2 libheif libraw opencolorio openexr openjpeg pybind11"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DUSE_PYTHON=OFF \
        -DOIIO_BUILD_TOOLS=ON \
        -DOIIO_BUILD_TESTS=OFF \
        -DBoost_ROOT="$boost_INSTALL_DIR" \
        -DWebP_ROOT="$libwebp_INSTALL_DIR" \
        -DLibheif_ROOT="$libheif_INSTALL_DIR" \
        -DOpenJPEG_ROOT="$openjpeg_INSTALL_DIR" \
        -DFreetype_ROOT="$freetype2_INSTALL_DIR" \
        -DOpenColorIO_ROOT="$opencolorio_INSTALL_DIR" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so" \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY="$zlib_LIBRARY_DIR/libz.a" \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY="$libpng_LIBRARY_DIR/libpng.so" \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"\
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so" \
        -DGIF_INCLUDE_DIR="$giflib_INCLUDE_DIR" \
        -DGIF_LIBRARY="$giflib_LIBRARY_DIR/libgif.so" \
        -DPYTHON_INCLUDE_DIR="$python_INCLUDE_DIR/python3.9" \
        -DPYTHON_LIBRARY="$python_LIBRARY_DIR/libpython3.so" \
        -DPYTHON_EXECUTABLE="$MY_HOME_DIR/native/python/bin/python3"
}
