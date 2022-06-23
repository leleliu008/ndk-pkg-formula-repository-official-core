pkg_set summary "Manage your dotfiles across multiple diverse machines, securely"
pkg_set webpage "https://chezmoi.io/"
pkg_set git.url "https://github.com/twpayne/chezmoi.git"
pkg_set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.18.0.tar.gz"
pkg_set src.sha "539c33e9b8fb39ff7de8229e383ee430d4ec216ab9c48a5b3a0e5634abb4eb83"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
