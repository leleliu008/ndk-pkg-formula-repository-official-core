package set summary "C++ functions matching the interface and behavior of python string methods with std::string"
package set git.url "https://github.com/imageworks/pystring.git"
package set license ";LICENSE;https://raw.githubusercontent.com/imageworks/pystring/master/LICENSE"
package set binbstd "yes"

prepare() {
    sed_in_place '/rindex/d' "$COMMON_INCLUDE_H_FILEPATH"
}

build() {
    run rm -f pystring.o &&
    run rm -f pystring.a &&
    run $CXX $CXXFLAGS $CPPFLAGS $LDFLAGS -c -o pystring.o pystring.cpp &&
    run $AR rcs libpystring.a pystring.o &&
    run install_incs pystring.h:pystring &&
    run install_libs libpystring.a
}
