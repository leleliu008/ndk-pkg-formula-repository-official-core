package set summary "Highly capable, feature-rich programming language"
package set webpage "https://www.perl.org"
package set git.url "https://github.com/perl/perl5.git"
package set src.url "https://www.cpan.org/src/5.0/perl-5.32.1.tar.xz"
package set src.sum "57cc47c735c8300a8ce2fa0643507b44c4ae59012bfdad0121313db639e02309"
package set license "GPL-1.0-or-later"
package set dep.cmd "make"

prepare() {
    # http://arsv.github.io/perl-cross/index.html
    fetch "https://github.com/arsv/perl-cross/releases/download/1.3.5/perl-cross-1.3.5.tar.gz" --sha256=91c66f6b2b99fccfd4fee14660b677380b0c98f9456359e91449798c2ad2ef25 --output-dir="$MY_CACHED_DIR" &&
    tar --strip-components=1 -xf "$MY_CACHED_DIR/perl-cross-1.3.5.tar.gz" &&
    gsed -i 's|sed -r|gsed -r|g' $(grep 'sed -r' -rl .) && {
        sed_in_place '1a set -x' configure &&
        sed_in_place '1a set -x' cnf/configure
    }
}

package set binsrcd 'yes'

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
