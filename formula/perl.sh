package set summary "Highly capable, feature-rich programming language"
package set webpage "https://www.perl.org"
package set git.url "https://github.com/perl/perl5.git"
package set src.url "https://www.cpan.org/src/5.0/perl-5.34.0.tar.xz"
package set src.sum "82c2e5e5c71b0e10487a80d79140469ab1f8056349ca8545140a224dbbed7ded"
package set license "GPL-1.0-or-later"
package set bsystem "make"
package set binsrcd 'yes'

prepare() {
    # http://arsv.github.io/perl-cross/index.html

    RES_URL='https://github.com/arsv/perl-cross/releases/download/1.3.6/perl-cross-1.3.6.tar.gz'
    RES_SUM='dd'
    RES_FILENAME=$(basename "$RES_URL")

    fetch "$RES_URL" --sha256=$RES_SUM --output-dir="$MY_SOURCE_DIR" &&
    run tar --strip-components=1 -xf "$MY_SOURCE_DIR/$RES_FILENAME" &&
    gsed -i 's|sed -r|gsed -r|g' $(grep 'sed -r' -rl .) && {
        sed_in_place '1a set -x' configure &&
        sed_in_place '1a set -x' cnf/configure
    }
}

build() {
    ./configure \
        --target="$TARGET_TRIPLE" \
        -Dosname=android \
		-Dsysroot=$SYSROOT \
		-Dprefix=$ABI_INSTALL_DIR \
		-Dcc="$CC -Wl,--enable-new-dtags" \
        -Dcharsizesize=1 \
        -Duseshrplib
}
