package set summary "Library for manipulating JPEG-2000 images"
package set webpage "https://ece.engr.uvic.ca/~frodo/jasper/"
package set src.git "https://github.com/jasper-software/jasper.git"
package set src.url "https://github.com/jasper-software/jasper/releases/download/version-2.0.33/jasper-2.0.33.tar.gz"
package set src.sum "28d28290cc2eaf70c8756d391ed8bcc8ab809a895b9a67ea6e89da23a611801a"
package set license "JasPer-2.0"
package set dep.pkg "libjpeg-turbo"
package set bsystem "cmake"

build() {
    cmakew \
        -DJAS_ENABLE_DOC=OFF \
        -DJAS_ENABLE_SHARED=ON \
        -DJAS_ENABLE_PROGRAMS=ON
}
