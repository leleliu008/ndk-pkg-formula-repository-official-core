pkg_set summary "Manage your dotfiles across multiple diverse machines, securely"
pkg_set webpage "https://chezmoi.io/"
pkg_set git.url "https://github.com/twpayne/chezmoi.git"
pkg_set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.18.1.tar.gz"
pkg_set src.sha "c832686ba7dad80fa5887d6e6a3ba9e3b910820eb3a2fcc2cb00f65e8d30ce68"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
