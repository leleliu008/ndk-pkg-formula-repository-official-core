package set summary "Free (GNU) replacement for the Pico text editor"
package set webpage "https://www.nano-editor.org/"
package set src.url "https://www.nano-editor.org/dist/v5/nano-5.9.tar.xz"
package set src.sum "757db8cda4bb2873599e47783af463e3b547a627b0cabb30ea7bf71fb4c24937"
package set license "GPL-3.0-or-later"
package set dep.pkg "gettext ncurses file libglob"
package set dep.cmd "pkg-config"
package set bsystem "configure"
package set ldfalgs "-lglob"

build() {
    configure \
        --enable-utf8 \
        --enable-color \
        --enable-extra \
        --enable-nanorc \
        --enable-multibuffer
}
