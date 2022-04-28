pkg_set summary "Google C++ Testing and Mocking Framework"
pkg_set git.url "https://github.com/google/googletest.git"
pkg_set src.url "https://github.com/google/googletest/archive/release-1.11.0.tar.gz"
pkg_set src.sha "b4870bf121ff7795ba20d20bcdd8627b8e088f2d1dab299a031c1034eddc93d5"
pkg_set bsystem "cmake"
pkg_set license "BSD-3-Clause|LICENSE|https://raw.githubusercontent.com/google/googletest/main/LICENSE"
pkg_set developer "|opensource@google.com|Google|https://github.com/google"

build() {
    case $INSTALL_LIB in
        static) cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON
                cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON
    esac
}
