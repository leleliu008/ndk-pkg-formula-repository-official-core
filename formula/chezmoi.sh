package set summary "Manage your dotfiles across multiple diverse machines, securely"
package set webpage "https://chezmoi.io/"
package set git.url "https://github.com/twpayne/chezmoi.git"
package set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.13.1.tar.gz"
package set src.sum "52fba493bb9f987a7971bcc187e7af9c01277b00daa91e4113e2e1f68c634ae2"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
