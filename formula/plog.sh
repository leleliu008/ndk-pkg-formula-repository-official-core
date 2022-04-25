pkg_set summary "Portable, simple and extensible C++ logging library"
pkg_set git.url "https://github.com/SergiusTheBest/plog.git"
pkg_set license "MPL-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew -DPLOG_BUILD_SAMPLES=OFF
}
