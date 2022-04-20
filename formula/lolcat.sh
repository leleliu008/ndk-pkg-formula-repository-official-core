package set summary "Rainbows and unicorns in your console"
package set git.url "https://github.com/jaseg/lolcat.git"
package set src.url "https://github.com/jaseg/lolcat/archive/refs/tags/v1.2.tar.gz"
package set src.sum "b6e1a0e24479fbdd4eb907531339e2cafc0c00b78d19caf70e8377b8b7546331"
package set license ";LICENSE;https://raw.githubusercontent.com/jaseg/lolcat/main/LICENSE"

build() {
    run rm -rf lolcat &&
    run rm -rf censor &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -fPIE -lm -o lolcat "$PACKAGE_BSCRIPT_DIR/lolcat.c" &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -fPIE     -o censor "$PACKAGE_BSCRIPT_DIR/censor.c" &&
    run install_bins lolcat censor
}
