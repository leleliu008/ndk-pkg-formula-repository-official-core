package set summary "Download Youtube Video in Golang"
package set src.git "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.7.4.tar.gz"
package set src.sum "991b15a0b6941c1bf2c3d691b8b5f2f37b28a041e735813da051cb5a01e38695"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "\"-s -w -X main.version=${PACKAGE_VERSION} -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ')\"" -o youtubedr ./cmd/youtubedr &&
    run install_bins youtubedr
}
