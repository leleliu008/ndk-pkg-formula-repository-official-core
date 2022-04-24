package set summary "Basis Universal GPU texture codec command-line compression tool"
package set git.url "https://github.com/BinomialLLC/basis_universal.git"
package set src.url "https://github.com/BinomialLLC/basis_universal/archive/refs/tags/1.16.3.tar.gz"
package set src.sum "b89563aa5879eed20f56b9cfa03b52848e759531fd5a1d51a8f63c846f96c2ac"
package set license "Apache-2.0;LICENSE;https://raw.githubusercontent.com/BinomialLLC/basis_universal/master/LICENSE"
package set bsystem "cmake"

prepare() {
    sed_in_place '/strip/c message("--")' CMakeLists.txt

    if [ "$TARGET_OS_VERS" -lt 24 ] ; then
        sed_in_place '/#include <vector>/a #define ftello(f) ftell(f)' encoder/basisu_enc.cpp &&
        sed_in_place '/class png_cfile : public png_file/i #define ftello(f) ftell(f)' encoder/pvpngreader.cpp
        sed_in_place '/class png_cfile : public png_file/i #define fseeko fseek' encoder/pvpngreader.cpp
    fi
}
