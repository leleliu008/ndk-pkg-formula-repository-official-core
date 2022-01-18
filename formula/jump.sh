package set summary "Helps you navigate your file system faster by learning your habits"
package set git.url "https://github.com/gsamokovarov/jump.git"
package set src.url "https://github.com/gsamokovarov/jump/archive/v0.40.0.tar.gz"
package set src.sum "f005f843fc65b7be1d4159da7d4c220eef0229ecec9935c6ac23e4963eef645e"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o jump &&
    run install_bins jump &&
    run install_mans man/jump.1
}
