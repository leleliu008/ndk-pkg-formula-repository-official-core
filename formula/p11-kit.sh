package set summary "Library to load and enumerate PKCS#11 modules"
package set webpage "https://p11-glue.freedesktop.org"
package set src.git "https://github.com/p11-glue/p11-kit.git"
package set src.url "https://github.com/p11-glue/p11-kit/releases/download/0.24.0/p11-kit-0.24.0.tar.xz"
package set src.sum "81e6140584f635e4e956a1b93a32239acf3811ff5b2d3a5c6094e94e99d2c685"
package set bsystem "configure"

prepare() {
    # p11-kit cannot be used as a static library
    sed_in_place 's/if test "$enable_static" = "yes"; then/if false ; then/' configure
}

build() {
    configure \
        --without-systemd \
        --without-libtasn1 \
        --without-libffi \
        --with-bash-completion \
        --disable-coverage \
        --disable-strict \
        --disable-doc
}
