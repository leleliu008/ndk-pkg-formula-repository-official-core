package set summary "Download Youtube Video in Golang"
package set git.url "https://github.com/kkdai/youtube.git"
package set src.url "https://github.com/kkdai/youtube/archive/v2.7.9.tar.gz"
package set src.sum "1c0feca8db4d05cf8c29c39c0470cff75cc5fe18b17f5fa260bd9aa7c58ce986"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') ./cmd/youtubedr
}
