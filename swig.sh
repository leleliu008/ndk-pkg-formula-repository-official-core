summary "Generate scripting interfaces to C/C++ code"
webpage "http://www.swig.org"
src_url "https://downloads.sourceforge.net/project/swig/swig/swig-4.0.2/swig-4.0.2.tar.gz"
src_sum "d53be9730d8d58a16bf0cbd1f8ac0c0c3e1090573168bfa151b01eb47fa906fc"
license "GPL-3.0"
bsystem "configure"
depends "pcre"

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
