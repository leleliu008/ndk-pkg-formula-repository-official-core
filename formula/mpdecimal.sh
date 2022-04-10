package set summary "Library for decimal floating point arithmetic"
package set webpage "https://www.bytereef.org/mpdecimal/"
package set src.url "https://www.bytereef.org/software/mpdecimal/releases/mpdecimal-2.5.1.tar.gz"
package set src.sum "9f9cd4c041f99b5c49ffb7b59d9f12d95b683d88585608aa56a6307667b2b21f"
package set license "BSD-2-Clause"
package set bsystem "configure"
package set binbstd "yes"

build() {
    export LD="$CC"
    configure
}
