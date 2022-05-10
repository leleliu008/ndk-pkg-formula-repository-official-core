pkg_set summary "Manage your dotfiles across multiple diverse machines, securely"
pkg_set webpage "https://chezmoi.io/"
pkg_set git.url "https://github.com/twpayne/chezmoi.git"
pkg_set src.url "https://github.com/twpayne/chezmoi/archive/refs/tags/v2.15.3.tar.gz"
pkg_set src.sha "2c0239c643795a13420f815c7e906720cd98594152b6d6fa546b0242462adc9e"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X main.version=$PACKAGE_VERSION \
        -X main.commit=$PACKAGE_GIT_REV \
        -X main.date=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
        -X main.builtBy=ndk-pkg
}
