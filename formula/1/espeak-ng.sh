package set summary "an open source speech synthesizer"
package set git.url "https://github.com/espeak-ng/espeak-ng.git"
package set src.url "https://github.com/espeak-ng/espeak-ng/archive/refs/tags/1.50.tar.gz"
package set src.sum "5ce9f24ee662b5822a4acc45bed31425e70d7c50707b96b6c1603a335c7759fa"
package set binbstd 'yes'
package set bsystem "autogen"

prepare() {
    sed_in_place 's/-lpthread//' Makefile.am &&
    sed_in_place 's/which/command -v/' autogen.sh &&
    ./autogen.sh
}
