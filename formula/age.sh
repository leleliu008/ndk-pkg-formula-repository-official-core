pkg_set summary "Simple, modern, secure file encryption"
pkg_set webpage "https://filippo.io/age"
pkg_set git.url "https://github.com/FiloSottile/age.git"
pkg_set src.url "https://github.com/FiloSottile/age/archive/v1.0.0.tar.gz"
pkg_set src.sha "8d27684f62f9dc74014035e31619e2e07f8b56257b1075560456cbf05ddbcfce"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "go"

build() {
    for item in age age-keygen
    do
        gow -X main.Version=v$PACKAGE_VERSION ./cmd/$item || return 1
        run install_mans doc/$item.1 || return 1
    done
}
