pkg_set summary "File format designed to store large amounts of data"
pkg_set webpage "https://www.hdfgroup.org/HDF5"
pkg_set gir.url "https://github.com/HDFGroup/hdf5.git"
pkg_set src.url "https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.13/hdf5-1.13.0/src/hdf5-1.13.0.tar.bz2"
pkg_set src.sha "1826e198df8dac679f0d3dc703aba02af4c614fd6b7ec936cf4a55e6aa0646ec"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "szip zlib"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DHDF5_BUILD_DOC=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_STATIC_EXECS=ON \
        -DTEST_LFS_WORKS_RUN=ON
}
