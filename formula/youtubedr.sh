package set summary "Download Youtube Video in Golang"
package set src.git "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.7.5.tar.gz"
package set src.sum "64de1b1dac4081f7a3ac9bc90a3ef070b7c85c36acb01f03200441ebda989b7e"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "\"-s -w -X main.version=${PACKAGE_VERSION} -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ')\"" -o youtubedr ./cmd/youtubedr &&
    run install_bins youtubedr
}
