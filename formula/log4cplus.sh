package set summary "Logging Framework for C++"
package set webpage "https://sourceforge.net/p/log4cplus/wiki/Home/"
package set src.git "https://github.com/log4cplus/log4cplus.git"
package set src.url "https://downloads.sourceforge.net/project/log4cplus/log4cplus-stable/2.0.7/log4cplus-2.0.7.tar.xz"
package set src.sum "8f74a0a5920ba044b24e2ebeb0f1e5e36d85d5c23ed48d9fe328882b16130db8"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DLOG4CPLUS_BUILD_TESTING=OFF \
        -DWITH_UNIT_TESTS=OFF
}
