pkg_set summary "GNU implementation of which utility"
pkg_set webpage "https://carlowood.github.io/which/index.html"
pkg_set src.url "https://ftp.gnu.org/gnu/which/which-2.21.tar.gz"
pkg_set src.sha "f4a245b94124b377d8b49646bf421f9155d36aa7614b6ebf83705d3ffc76eaad"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

# void endgrent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

build() {
    configure --disable-iberty
}
