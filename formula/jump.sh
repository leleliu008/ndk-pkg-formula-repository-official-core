pkg_set summary "Helps you navigate your file system faster by learning your habits"
pkg_set git.url "https://github.com/gsamokovarov/jump.git"
pkg_set src.url "https://github.com/gsamokovarov/jump/archive/v0.41.0.tar.gz"
pkg_set src.sha "833151da3e9dc09190588c0a381116e3dfdf5b728869cb7b96681eb59c452b4c"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow &&
    run install_mans man/jump.1
}
