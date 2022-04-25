pkg_set summary "Library to provide abstract access to various archives"
pkg_set webpage "https://icculus.org/physfs/"
pkg_set git.url "https://github.com/icculus/physfs.git"
pkg_set src.url "https://icculus.org/physfs/downloads/physfs-3.0.2.tar.bz2"
pkg_set src.sha "304df76206d633df5360e738b138c94e82ccf086e50ba84f456d3f8432f9f863"
pkg_set license "Zlib"
pkg_set dep.pkg "zlib"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DPHYSFS_BUILD_STATIC=ON \
        -DPHYSFS_BUILD_SHARED=ON \
        -DPHYSFS_BUILD_TEST=OFF \
        -DPHYSFS_BUILD_DOCS=OFF
}
