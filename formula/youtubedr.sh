pkg_set summary "Download Youtube Video in Golang"
pkg_set git.url "https://github.com/kkdai/youtube.git"
pkg_set src.url "https://github.com/kkdai/youtube/archive/v2.7.15.tar.gz"
pkg_set src.sha "093246256d8f0ef719cb1bd5a5548b56031b686c553f44f84236bd62b0519357"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
