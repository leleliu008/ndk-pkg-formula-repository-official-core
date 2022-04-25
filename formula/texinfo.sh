pkg_set summary "Official documentation format of the GNU project"
pkg_set webpage "https://www.gnu.org/software/texinfo"
pkg_set src.url "https://ftp.gnu.org/gnu/texinfo/texinfo-6.8.tar.xz"
pkg_set src.sha "8eb753ed28bca21f8f56c1a180362aed789229bd62fff58bf8368e9beb59fec4"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --enable-threads=posix
}
