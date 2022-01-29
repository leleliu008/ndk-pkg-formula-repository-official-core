package set summary "Portable, simple and extensible C++ logging library"
package set git.url "https://github.com/SergiusTheBest/plog.git"
package set license "MPL-2.0"
package set bsystem "cmake"

build() {
    cmakew -DPLOG_BUILD_SAMPLES=OFF
}
