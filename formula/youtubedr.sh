package set summary "Download Youtube Video in Golang"
package set git.url "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.7.6.tar.gz"
package set src.sum "455a33cdd07698ee8a0227d029a10238a15a747007d09647cc65d45be29d82b2"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
