package set summary "Library for Apple Binary- and XML-Property Lists"
package set webpage "https://www.libimobiledevice.org"
package set src.git "https://github.com/libimobiledevice/libplist.git"
package set src.url "https://github.com/libimobiledevice/libplist/releases/download/2.2.0/libplist-2.2.0.tar.bz2"
package set src.sum "4a5517e5377ec421df84c586ba85bb4e1d26f11ad203d7d450a907c0156fbd9a"
package set bsystem "configure"

build() {
    configure --without-cython
}
