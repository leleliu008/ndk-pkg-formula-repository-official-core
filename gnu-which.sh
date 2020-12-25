summary "GNU implementation of which utility"
webpage "https://carlowood.github.io/which/index.html"
src_url "https://ftp.gnu.org/gnu/which/which-2.21.tar.gz"
src_sum "f4a245b94124b377d8b49646bf421f9155d36aa7614b6ebf83705d3ffc76eaad"
license "GPL-3.0"

# void endgrent(void) __INTRODUCED_IN(26);

build() {
    configure --disable-iberty
}
