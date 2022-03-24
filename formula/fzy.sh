package set summary "Fast, simple fuzzy text selector with an advanced scoring algorithm"
package set git.url "https://github.com/jhawthorn/fzy.git"
package set src.url "https://github.com/jhawthorn/fzy/releases/download/1.0/fzy-1.0.tar.gz"
package set src.sum "80257fd74579e13438b05edf50dcdc8cf0cdb1870b4a2bc5967bd1fdbed1facf"
package set license "MIT"
package set bsystem "make"
package set binbstd "yes"

build() {
    makew clean
    makew install PREFIX="$TARGET_INSTALL_DIR" LIBS=
}
