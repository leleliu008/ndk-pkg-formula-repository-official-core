pkg_set summary "XML 1.0 parser"
pkg_set webpage "https://libexpat.github.io"
pkg_set git.url "https://github.com/libexpat/libexpat.git"
pkg_set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_4_8/expat-2.4.8.tar.xz"
pkg_set src.sha "f79b8f904b749e3e0d20afeadecf8249c55b2e32d4ebb089ae378df479dcaf25"
pkg_set bsystem "cmake"
pkg_set license "MIT|COPYING|https://raw.githubusercontent.com/libexpat/libexpat/master/expat/COPYING"
pkg_set developer "Clark+Cooper|Fred+L.+Drake,+Jr.|Greg+Stein|James+Clark|Karl+Waclawek|Rhodri+James|Sebastian+Pipping|Steven+Solie"

build() {
    CMAKE_COMMON_OPTIONS="
        -DEXPAT_BUILD_DOCS=OFF
        -DEXPAT_BUILD_TESTS=OFF
        -DEXPAT_BUILD_FUZZERS=OFF
        -DEXPAT_BUILD_EXAMPLES=OFF
        -DEXPAT_BUILD_TOOLS=ON"

    case $INSTALL_LIB in
        yes)    cmakew $CMAKE_COMMON_OPTIONS -DEXPAT_SHARED_LIBS=ON  ;;
        static) cmakew $CMAKE_COMMON_OPTIONS -DEXPAT_SHARED_LIBS=OFF ;;
        shared) cmakew $CMAKE_COMMON_OPTIONS -DEXPAT_SHARED_LIBS=ON  ;;
        both)   cmakew $CMAKE_COMMON_OPTIONS -DEXPAT_SHARED_LIBS=OFF
                cmakew $CMAKE_COMMON_OPTIONS -DEXPAT_SHARED_LIBS=ON
    esac
}
