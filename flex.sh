summary "Fast Lexical Analyzer, generates Scanners (tokenizers)"
src_git "https://github.com/westes/flex.git"
src_url "https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
src_sum "e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995"
license "BSD-2-Clause"
bsystem "configure"

build() {
    configure \
        --enable-warnings \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
