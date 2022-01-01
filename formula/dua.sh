package set summary "View disk space usage and delete unwanted data, fast."
package set git.url "https://github.com/Byron/dua-cli.git"
package set src.url "https://github.com/Byron/dua-cli/archive/refs/tags/v2.14.11.tar.gz"
package set src.sum "31c95fc4e9e034f9ba892397dc3d3844635c6b03852983fcf3b0cc326b751c83"
package set license "MIT"
package set bsystem "cargo"

build() {
    cargow install --no-default-features
}
