pkg_set summary "Socket library in C"
pkg_set webpage "https://nanomsg.org/"
pkg_set git.url "https://github.com/nanomsg/nanomsg.git"
pkg_set src.url "https://github.com/nanomsg/nanomsg/archive/1.2.tar.gz"
pkg_set src.sha "6ef7282e833df6a364f3617692ef21e59d5c4878acea4f2d7d36e21c8858de67"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew -DNN_TESTS=OFF
}
