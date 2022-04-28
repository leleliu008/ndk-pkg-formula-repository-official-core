pkg_set summary "Cross platform C99 library to get cpu features at runtime"
pkg_set git.url "https://github.com/google/cpu_features.git"
pkg_set src.url "https://github.com/google/cpu_features/archive/v0.7.0.tar.gz"
pkg_set src.sha "df80d9439abf741c7d2fdcdfd2d26528b136e6c52976be8bd0cd5e45a27262c0"
pkg_set bsystem "cmake"
pkg_set license "Apache-2.0|LICENSE|https://raw.githubusercontent.com/google/cpu_features/main/LICENSE"
pkg_set developer "|opensource@google.com|Google|https://github.com/google"

build() {
    case $INSTALL_LIB in
        static) cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_PIC=ON ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_PIC=ON ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_PIC=ON
                cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_PIC=ON
    esac
}
