pkg_set summary "Fastest and safest AV1 video encoder"
pkg_set git.url "https://github.com/xiph/rav1e.git"
pkg_set src.url "https://github.com/xiph/rav1e/archive/v0.5.1.tar.gz"
pkg_set src.sha "7b3060e8305e47f10b79f3a3b3b6adc3a56d7a58b2cb14e86951cc28e1b089fd"
pkg_set license "BSD-2-Clause"
pkg_set dep.cmd "nasm cargo-cbuild"
pkg_set bsystem "cargo"

# https://github.com/lu-zero/cargo-c/issues/248

build() {
    cargow install &&
    cargow cbuild &&
    run cd "'$PACKAGE_BSCRIPT_DIR/target/$RUST_TARGET/release'" &&
    run install_incs rav1e.h:rav1e &&
    run install_libs librav1e.a librav1e.so &&
    run install_pcfs rav1e.pc
}
