package set summary "Library for manipulating pipelines of subprocesses in a flexible and convenient way"
package set webpage "http://libpipeline.nongnu.org"
package set src.url "http://download.savannah.nongnu.org/releases/libpipeline/libpipeline-1.5.4.tar.gz"
package set src.sum "db785bddba0a37ef14b4ef82ae2d18b8824e6983dfb9910319385e28df3f1a9c"
package set bsystem "configure"

build() {
    configure \
        --enable-threads=posix \
        --enable-socketpair-pipe
}
