package set summary "Cross platform C99 library to get cpu features at runtime"
package set git.url "https://github.com/google/cpu_features.git"
package set src.url "https://github.com/google/cpu_features/archive/v0.6.0.tar.gz"
package set src.sum "95a1cf6f24948031df114798a97eea2a71143bd38a4d07d9a758dda3924c1932"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_PIC=ON
}
