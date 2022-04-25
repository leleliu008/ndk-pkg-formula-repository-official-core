pkg_set summary "Fast Lexical Analyzer, generates Scanners (tokenizers)"
pkg_set git.url "https://github.com/westes/flex.git"
pkg_set src.url "https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
pkg_set src.sha "e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "configure"

build() {
    configure --enable-warnings
}
