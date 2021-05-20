package set summary "Fast Lexical Analyzer, generates Scanners (tokenizers)"
package set src.git "https://github.com/westes/flex.git"
package set src.url "https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
package set src.sum "e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995"
package set license "BSD-2-Clause"
package set bsystem "configure"

build() {
    configure \
        --enable-warnings \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
