package set summary "Encode and decode base64 files"
package set webpage "https://www.fourmilab.ch/webtools/base64/"
package set src.url "https://www.fourmilab.ch/webtools/base64/base64-1.5.tar.gz"
package set src.sum "2416578ba7a7197bddd1ee578a6d8872707c831d2419bdc2c1b4317a7e3c8a2a"
package set license "Unlicense"
package set bsystem "configure"
package set binbstd 'yes'

build() {
    run install -d "$TARGET_INSTALL_DIR/bin" &&
    run install -d "$TARGET_INSTALL_DIR/share/man/man1" &&
    configure --mandir="$TARGET_INSTALL_DIR/share/man"
}
