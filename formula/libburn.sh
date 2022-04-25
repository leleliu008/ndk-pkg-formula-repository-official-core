pkg_set summary "Library for writing preformatted data onto optical media: CD, DVD and BD (Blu-Ray)"
pkg_set webpage "https://www.libburnia-project.org"
pkg_set src.url "http://files.libburnia-project.org/releases/libburn-1.5.2.tar.gz"
pkg_set src.sha "7b32db1719d7f6516cce82a9d00dfddfb3581725db732ea87d41ea8ef0ce5227"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

prepare() {
    sed_in_place 's/-lpthread//g' configure
}
