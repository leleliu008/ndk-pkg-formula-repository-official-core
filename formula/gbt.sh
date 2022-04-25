pkg_set summary "Highly configurable prompt builder for Bash and ZSH written in Go"
pkg_set git.url "https://github.com/jtyr/gbt.git"
pkg_set src.url "https://github.com/jtyr/gbt/archive/refs/tags/v2.0.0.tar.gz"
pkg_set src.sha "b324695dc432e8e22bc257f7a6ec576f482ec418fb9c9a8301f47bfdf7766998"
pkg_set license "MIT"
pkg_set bsystem "go"

prepare() {
    run go mod init gbt &&
	run go mod tidy
}

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.build=$PACKAGE_GIT_REV ./cmd/gbt
}
