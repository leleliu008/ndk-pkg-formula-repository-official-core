package set summary "New GNU portable threads library"
package set webpage "https://gnupg.org"
package set src.url "https://gnupg.org/ftp/gcrypt/npth/npth-1.6.tar.bz2"
package set src.sum "1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1"
package set license "LGPL-2.1"
package set bsystem "configure"

build() {
    configure --disable-tests
}
