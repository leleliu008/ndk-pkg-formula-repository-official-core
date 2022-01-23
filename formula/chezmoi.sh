package set summary "Manage your dotfiles across multiple diverse machines, securely"
package set webpage "https://chezmoi.io/"
package set git.url "https://github.com/twpayne/chezmoi.git"
package set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.10.0.tar.gz"
package set src.sum "edd67d4e97d3a022a84968cd3828004767ea0ce7b141439cc9ffb4048519a0c2"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
