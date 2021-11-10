package set summary "Library for manipulating pipelines of subprocesses in a flexible and convenient way"
package set webpage "http://libpipeline.nongnu.org"
package set src.url "http://download.savannah.nongnu.org/releases/libpipeline/libpipeline-1.5.3.tar.gz"
package set src.sum "5dbf08faf50fad853754293e57fd4e6c69bb8e486f176596d682c67e02a0adb0"
package set bsystem "configure"

build() {
    configure \
        --enable-threads=posix \
        --enable-socketpair-pipe
}
