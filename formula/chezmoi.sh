package set summary "Manage your dotfiles across multiple diverse machines, securely"
package set webpage "https://chezmoi.io/"
package set git.url "https://github.com/twpayne/chezmoi.git"
package set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.14.0.tar.gz"
package set src.sum "4d7a1baf7e3caa8f6976b1ea5e6ba81c75273b1dd1f0fc946134a82454720397"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
