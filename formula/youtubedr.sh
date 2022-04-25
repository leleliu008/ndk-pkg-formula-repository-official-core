pkg_set summary "Download Youtube Video in Golang"
pkg_set git.url "https://github.com/kkdai/youtube.git"
pkg_set src.url "https://github.com/kkdai/youtube/archive/v2.7.10.tar.gz"
pkg_set src.sha "04a4f0b745094884fb2902945ac3b1c966fbe4fbd67a027cb482d491662900f9"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
