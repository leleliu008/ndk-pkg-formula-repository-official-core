package set summary "Cross platform C99 library to get cpu features at runtime"
package set src.git "https://github.com/google/cpu_features.git"
package set src.url "https://github.com/google/cpu_features/archive/v0.5.0.tar.gz"
package set src.sum "b967811cecd68412e0dc65e4964756a6ae48755456fa2c2f42034f6271ac2c27"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_PIC=ON
}
