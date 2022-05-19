pkg_set summary "Encode and decode base64 files"
pkg_set webpage "https://www.fourmilab.ch/webtools/base64/"
pkg_set src.url "https://www.fourmilab.ch/webtools/base64/base64-1.5.tar.gz"
pkg_set src.sha "2416578ba7a7197bddd1ee578a6d8872707c831d2419bdc2c1b4317a7e3c8a2a"
pkg_set license "Unlicense"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

build() {
    run install -d "$TARGET_INSTALL_DIR/bin" &&
    run install -d "$TARGET_INSTALL_DIR/share/man/man1" &&
    configure --mandir="$TARGET_INSTALL_DIR/share/man"
}
