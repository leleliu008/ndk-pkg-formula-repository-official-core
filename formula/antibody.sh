pkg_set summary "Shell plugin manager"
pkg_set webpage "https://getantibody.github.io/"
pkg_set git.url "https://github.com/getantibody/antibody.git"
pkg_set src.url "https://github.com/getantibody/antibody/archive/v6.1.1.tar.gz"
pkg_set src.sha "87bced5fba8cf5d587ea803d33dda72e8bcbd4e4c9991a9b40b2de4babbfc24f"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION
}
