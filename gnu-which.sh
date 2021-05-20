package set summary "GNU implementation of which utility"
package set webpage "https://carlowood.github.io/which/index.html"
package set src.url "https://ftp.gnu.org/gnu/which/which-2.21.tar.gz"
package set src.sum "f4a245b94124b377d8b49646bf421f9155d36aa7614b6ebf83705d3ffc76eaad"
package set license "GPL-3.0"
package set bsystem "configure"

# void endgrent(void) __INTRODUCED_IN(26);
package set sdk.api 26

build() {
    configure --disable-iberty
}
