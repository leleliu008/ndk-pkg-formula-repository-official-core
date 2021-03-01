summary "Configurable static site generator"
webpage "https://gohugo.io"
src_git "https://github.com/gohugoio/hugo.git"
src_url "https://github.com/gohugoio/hugo/archive/v0.80.0.tar.gz"
src_sum "4ddcd6ebea21e5fd4067db4a481ab7810e34496d5991a3520169c8f5ee1d38bb"
license "Apache-2.0"
require "go"

build_in_sourced

build() {
    run go build -v -trimpath -o hugo &&
    install_bins hugo
}
