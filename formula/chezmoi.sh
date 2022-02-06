package set summary "Manage your dotfiles across multiple diverse machines, securely"
package set webpage "https://chezmoi.io/"
package set git.url "https://github.com/twpayne/chezmoi.git"
package set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.11.2.tar.gz"
package set src.sum "6ae56cb27aa75f3fc51ca12d4ed95314b7b999c5b02d7b7b0a02e4755e0f1a00"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
