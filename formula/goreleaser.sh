package set summary "Deliver Go binaries as fast and easily as possible"
package set webpage "https://goreleaser.com/"
package set git.url "https://github.com/goreleaser/goreleaser.git"
package set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.3.1.tar.gz"
package set src.sum "8165223273bac88e874fefb4b328ca303a6c2489402c97e94ff02975fbd1c49e"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg'" -o goreleaser &&
    run install_bins goreleaser
}
