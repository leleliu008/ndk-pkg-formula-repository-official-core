package set summary "Library to provide abstract access to various archives"
package set webpage "https://icculus.org/physfs/"
package set git.url "https://github.com/icculus/physfs.git"
package set src.url "https://icculus.org/physfs/downloads/physfs-3.0.2.tar.bz2"
package set src.sum "304df76206d633df5360e738b138c94e82ccf086e50ba84f456d3f8432f9f863"
package set license "Zlib"
package set dep.pkg "zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DPHYSFS_BUILD_STATIC=ON \
        -DPHYSFS_BUILD_SHARED=ON \
        -DPHYSFS_BUILD_TEST=OFF \
        -DPHYSFS_BUILD_DOCS=OFF
}
