pkg_set summary "General purpose GPU library"
pkg_set webpage "https://arrayfire.com"
pkg_set git.url "https://github.com/arrayfire/arrayfire.git"
pkg_set src.url "https://github.com/arrayfire/arrayfire/releases/download/v3.8.0/arrayfire-full-3.8.0.tar.bz2"
pkg_set src.sha "dfc1ba61c87258f9ac92a86784b3444445fc4ef6cd51484acc58181c6487ed9e"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "boost fftw openblas spdlog"
pkg_set bsystem "cmake"

prepare() {
    sed_in_place 's|find_package(FFTW)|find_package(FFTW3)|' CMakeLists.txt
}
