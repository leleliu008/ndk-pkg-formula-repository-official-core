summary "Highly capable, feature-rich programming language"
webpage "https://www.perl.org"
src_git "https://github.com/perl/perl5.git"
src_url "https://www.cpan.org/src/5.0/perl-5.32.0.tar.xz"
src_sum "6f436b447cf56d22464f980fac1916e707a040e96d52172984c5d184c09b859b"
license "GPL-1.0-or-later"

prepare() {
    # http://arsv.github.io/perl-cross/index.html
    fetch "https://github.com/arsv/perl-cross/releases/download/1.3.5/perl-cross-1.3.5.tar.gz" --output-dir="$MY_CACHED_DIR" &&
    tar --strip-components=1 -xf "$MY_CACHED_DIR/perl-cross-1.3.4.tar.gz" &&
    gsed -i 's|sed -r|gsed -r|g' $(grep 'sed -r' -rl .)
}

build_in_sourced

build() {
    ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --target="$BUILD_FOR_TARGET" \
        --sysroot="$SYSROOT" \
        --with-cc="$CC" \
        --with-cpp="$CPP" \
        --with-ranlib="$RANLIB" \
        --with-objdump="$OBJDUMP" \
        --host-cc="$CC_FOR_BUILD" \
        --host-cpp="$CPP_FOR_BUILD" \
        --host-ranlib="$RANLIB_FOR_BUILD" \
        --host-objdump="$OBJDUMP_FOR_BUILD" \
        --all-static \
        -Dcharsizesize=1 \
        -Duseshrplib
}
