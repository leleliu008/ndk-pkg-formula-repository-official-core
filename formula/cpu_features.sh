package set summary "Cross platform C99 library to get cpu features at runtime"
package set git.url "https://github.com/google/cpu_features.git"
package set src.url "https://github.com/google/cpu_features/archive/v0.7.0.tar.gz"
package set src.sum "df80d9439abf741c7d2fdcdfd2d26528b136e6c52976be8bd0cd5e45a27262c0"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_PIC=ON
}
