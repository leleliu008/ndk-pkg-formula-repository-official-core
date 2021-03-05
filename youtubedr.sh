summary "Download Youtube Video in Golang"
webpage "https://github.com/kkdai/youtube"
src_url "https://github.com/kkdai/youtube/archive/v2.4.1.tar.gz"
src_sum "ae6387c097c9359d71d0e8dec864d6553e47e7edfb93ddbfe017062a05f4b396"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -x -trimpath -ldflags "\"-s -w -X main.version=$(version) -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ')\"" -o youtubedr ./cmd/youtubedr &&
    install_bins youtubedr
}
