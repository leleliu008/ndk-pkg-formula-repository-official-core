package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set src.git "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2021/sqlite-autoconf-3360000.tar.gz"
package set src.sum "bd90c3eb96bee996206b83be7065c9ce19aef38c3f4fb53073ada0d0b69bbce3"
package set version "3.36.0"
package set license "blessing"
package set dep.pkg "readline"
package set bsystem "configure"

build() {
    configure \
        --enable-readline \
        --disable-tcl \
        --disable-editline \
        --disable-load-extension
}
