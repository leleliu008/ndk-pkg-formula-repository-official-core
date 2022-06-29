pkg_set summary "Google C++ Testing and Mocking Framework"
pkg_set git.url "https://github.com/google/googletest.git"
pkg_set src.url "https://github.com/google/googletest/archive/release-1.12.0.tar.gz"
pkg_set src.sha "2a4f11dce6188b256f3650061525d0fe352069e5c162452818efbbf8d0b5fe1c"
pkg_set bsystem "cmake"
pkg_set license "BSD-3-Clause|LICENSE|https://raw.githubusercontent.com/google/googletest/main/LICENSE"
pkg_set developer "|opensource@google.com|Google|https://github.com/google"

build() {
    case $INSTALL_LIB in
        yes)    cmakew                         -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON ;;
        static) cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON ;;
        shared) cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON ;;
        both)   cmakew -DBUILD_SHARED_LIBS=OFF -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON
                cmakew -DBUILD_SHARED_LIBS=ON  -DBUILD_GMOCK=ON -DINSTALL_GTEST=ON
    esac
}
