pkg_set summary "Ogg Bitstream Library"
pkg_set webpage "https://www.xiph.org/ogg"
pkg_set git.url "https://github.com/xiph/ogg.git"
pkg_set src.url "https://github.com/xiph/ogg/releases/download/v1.3.5/libogg-1.3.5.tar.gz"
pkg_set src.sha "0eb4b4b9420a0f51db142ba3f9c64b333f826532dc0f48c6410ae51f4799b664"
pkg_set bsystem "cmake"
pkg_set license "BSD-3-Clause|COPYING|https://raw.githubusercontent.com/xiph/ogg/master/COPYING"
pkg_set developer "Monty;monty@xiph.org Greg+Maxwell;greg@xiph.org Ralph+Giles;giles@xiph.org Cristian+Adam;cristian.adam@gmail.com Tim+Terriberry;tterribe@xiph.org"

build() {
    case $INSTALL_LIB in
        static) cmakew -DBUILD_SHARED_LIBS=OFF ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF
                cmakew -DBUILD_SHARED_LIBS=ON
    esac
}
