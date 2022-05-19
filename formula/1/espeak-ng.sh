pkg_set summary "an open source speech synthesizer"
pkg_set git.url "https://github.com/espeak-ng/espeak-ng.git"
pkg_set src.url "https://github.com/espeak-ng/espeak-ng/archive/refs/tags/1.50.tar.gz"
pkg_set src.sha "5ce9f24ee662b5822a4acc45bed31425e70d7c50707b96b6c1603a335c7759fa"
pkg_set binbstd "yes"
pkg_set bsystem "autogen"

prepare() {
    sed_in_place 's/-lpthread//' Makefile.am &&
    sed_in_place 's/which/command -v/' autogen.sh &&
    ./autogen.sh
}
