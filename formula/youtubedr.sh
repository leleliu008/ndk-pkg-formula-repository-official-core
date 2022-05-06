pkg_set summary "Download Youtube Video in Golang"
pkg_set git.url "https://github.com/kkdai/youtube.git"
pkg_set src.url "https://github.com/kkdai/youtube/archive/v2.7.13.tar.gz"
pkg_set src.sha "082a6df600d390817ea3765196f5f5ca11a41ab81bfd591cb83a523acd011025"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
