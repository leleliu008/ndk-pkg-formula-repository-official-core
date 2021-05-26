package set summary "Download Youtube Video in Golang"
package set src.git "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.4.1.tar.gz"
package set src.sum "ae6387c097c9359d71d0e8dec864d6553e47e7edfb93ddbfe017062a05f4b396"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "\"-s -w -X main.version=${PACKAGE_VERSION} -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ')\"" -o youtubedr ./cmd/youtubedr &&
    run install_bins youtubedr
}
