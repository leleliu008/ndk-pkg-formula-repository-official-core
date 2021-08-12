package set summary "Socket library in C"
package set webpage "https://nanomsg.org/"
package set src.git "https://github.com/nanomsg/nanomsg.git"
package set src.url "https://github.com/nanomsg/nanomsg/archive/1.1.5.tar.gz"
package set src.sum "218b31ae1534ab897cb5c419973603de9ca1a5f54df2e724ab4a188eb416df5a"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew -DNN_TESTS=OFF
}
