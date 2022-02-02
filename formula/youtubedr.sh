package set summary "Download Youtube Video in Golang"
package set git.url "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.7.7.tar.gz"
package set src.sum "9b00a6680a82f5ed962e2bc46b689753ca899bd439613887754000d6a4041a88"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
