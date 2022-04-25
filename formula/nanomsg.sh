pkg_set summary "Socket library in C"
pkg_set webpage "https://nanomsg.org/"
pkg_set git.url "https://github.com/nanomsg/nanomsg.git"
pkg_set src.url "https://github.com/nanomsg/nanomsg/archive/1.1.5.tar.gz"
pkg_set src.sha "218b31ae1534ab897cb5c419973603de9ca1a5f54df2e724ab4a188eb416df5a"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew -DNN_TESTS=OFF
}
