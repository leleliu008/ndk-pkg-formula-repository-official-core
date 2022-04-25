pkg_set summary "Text interface for Git repositories"
pkg_set webpage "https://jonas.github.io/tig"
pkg_set git.url "https://github.com/jonas/tig.git"
pkg_set src.url "https://github.com/jonas/tig/releases/download/tig-2.5.5/tig-2.5.5.tar.gz"
pkg_set src.sha "24ba2c8beae889e6002ea7ced0e29851dee57c27fde8480fb9c64d5eb8765313"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "readline libiconv"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"
pkg_set binbstd 'yes'

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place '/nl_langinfo(CODESET)/d' src/tig.c
    fi
}
