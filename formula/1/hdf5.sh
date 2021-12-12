package set summary "File format designed to store large amounts of data"
package set webpage "https://www.hdfgroup.org/HDF5"
package set src.url "https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-1.12.1/src/hdf5-1.12.1.tar.bz2"
package set src.sum "aaf9f532b3eda83d3d3adc9f8b40a9b763152218fa45349c3bc77502ca1f8f1c"
package set license "BSD-3-Clause"
package set dep.pkg "szip zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DHDF5_BUILD_DOC=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_STATIC_EXECS=ON \
        -DTEST_LFS_WORKS_RUN=ON
}
