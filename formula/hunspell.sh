pkg_set summary "Spell checker and morphological analyzer"
pkg_set webpage "https://hunspell.github.io"
pkg_set git.url "https://github.com/hunspell/hunspell.git"
pkg_set src.url "https://github.com/hunspell/hunspell/archive/v1.7.0.tar.gz"
pkg_set src.sha "bb27b86eb910a8285407cf3ca33b62643a02798cf2eef468c0a74f6c3ee6bc8a"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set dep.pkg "gettext readline"
pkg_set bsystem "autotools"

build() {
    configure \
        --with-ui \
        --with-readline \
        --with-warnings
}
