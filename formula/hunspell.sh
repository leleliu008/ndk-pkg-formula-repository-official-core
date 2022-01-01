package set summary "Spell checker and morphological analyzer"
package set webpage "https://hunspell.github.io"
package set git.url "https://github.com/hunspell/hunspell.git"
package set src.url "https://github.com/hunspell/hunspell/archive/v1.7.0.tar.gz"
package set src.sum "bb27b86eb910a8285407cf3ca33b62643a02798cf2eef468c0a74f6c3ee6bc8a"
package set license "GPL-2.0"
package set dep.cmd "glibtoolize:libtoolize"
package set dep.pkg "gettext readline"
package set bsystem "autotools"

build() {
    configure \
        --with-ui \
        --with-readline \
        --with-warnings
}
