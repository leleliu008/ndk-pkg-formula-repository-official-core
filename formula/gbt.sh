package set summary "Highly configurable prompt builder for Bash and ZSH written in Go"
package set git.url "https://github.com/jtyr/gbt.git"
package set src.url "https://github.com/jtyr/gbt/archive/refs/tags/v2.0.0.tar.gz"
package set src.sum "b324695dc432e8e22bc257f7a6ec576f482ec418fb9c9a8301f47bfdf7766998"
package set license "MIT"
package set bsystem "go"

prepare() {
    run go mod init gbt &&
	run go mod tidy
}

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.version=$PACKAGE_VERSION -X main.build=$PACKAGE_GIT_REV'" ./cmd/gbt &&
    run install_bins gbt
}
