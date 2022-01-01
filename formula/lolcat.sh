package set summary "Rainbows and unicorns in your console"
package set git.url "https://github.com/jaseg/lolcat"
package set src.url "https://github.com/jaseg/lolcat/archive/refs/tags/v1.2.tar.gz"
package set src.sum "b6e1a0e24479fbdd4eb907531339e2cafc0c00b78d19caf70e8377b8b7546331"

build() {
    run rm -rf lolcat &&
    run rm -rf censor &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -fPIE -lm -o lolcat "$SOURCE_DIR/lolcat.c" &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -fPIE     -o censor "$SOURCE_DIR/censor.c" &&
    run install_bins lolcat censor
}
