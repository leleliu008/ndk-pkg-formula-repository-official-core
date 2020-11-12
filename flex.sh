summary="Fast Lexical Analyzer, generates Scanners (tokenizers)"
homepage="https://github.com/westes/flex"
url="https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
sha256="e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995"
license="BSD-2-Clause"

build() {
    configure \
        --enable-warnings \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
