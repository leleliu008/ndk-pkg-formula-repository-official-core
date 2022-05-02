pkg_set summary "EXIF parsing library"
pkg_set webpage "https://libexif.github.io"
pkg_set git.url "https://github.com/libexif/libexif.git"
pkg_set src.url "https://github.com/libexif/libexif/releases/download/v0.6.24/libexif-0.6.24.tar.bz2"
pkg_set src.sha "d47564c433b733d83b6704c70477e0a4067811d184ec565258ac563d8223f6ae"
pkg_set dep.cmd "autopoint glibtoolize:libtoolize"
pkg_set bsystem "autotools"
pkg_set license "LGPL-2.1-or-later|COPYING|https://raw.githubusercontent.com/libexif/libexif/master/COPYING"
pkg_set developer "Lutz+Mueller|urc8@rz.uni-karlsruhe.de Jan+Patera|patera@users.sourceforge.net Hans+Ulrich+Niedermann|gp@n-dimensional.de Hubert+Figuiere|hub@figuiere.net Dan+Fandrich|dan@coneharvesters.com Marcus+Meissner|marcus@jet.franken.de"

build2() {
    configure --enable-docs
}
