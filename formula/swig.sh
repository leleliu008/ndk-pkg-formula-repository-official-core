pkg_set summary "Generate scripting interfaces to C/C++ code"
pkg_set webpage "http://www.swig.org"
pkg_set git.url "https://github.com/swig/swig.git"
pkg_set src.url "https://downloads.sourceforge.net/project/swig/swig/swig-4.0.2/swig-4.0.2.tar.gz"
pkg_set src.sha "d53be9730d8d58a16bf0cbd1f8ac0c0c3e1090573168bfa151b01eb47fa906fc"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "pcre"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-ccache \
        --enable-cpp11-testing \
        --with-popen \
        --with-pcre \
        --without-boost \
        --without-android \
        --without-java \
        --without-javascript \
        --without-python \
        --without-perl5 \
        --without-ruby \
        --without-php \
        --without-tcl \
        --without-guile \
        --without-octave \
        --without-scilab \
        --without-ocaml \
        --without-mzscheme \
        --without-csharp \
        --without-lua \
        --without-r \
        --without-d \
        --without-go
}
