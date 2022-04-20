package set summary "Library to load and enumerate PKCS#11 modules"
package set webpage "https://p11-glue.freedesktop.org"
package set git.url "https://github.com/p11-glue/p11-kit.git"
package set src.url "https://github.com/p11-glue/p11-kit/releases/download/0.24.1/p11-kit-0.24.1.tar.xz"
package set src.sum "d8be783efd5cd4ae534cee4132338e3f40f182c3205d23b200094ec85faaaef8"
package set license "BSD-3-Clause"
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
