package set summary "Shell plugin manager"
package set webpage "https://getantibody.github.io/"
package set git.url "https://github.com/getantibody/antibody.git"
package set src.url "https://github.com/getantibody/antibody/archive/v6.1.1.tar.gz"
package set src.sum "87bced5fba8cf5d587ea803d33dda72e8bcbd4e4c9991a9b40b2de4babbfc24f"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.version=$PACKAGE_VERSION'" -o antibody &&
    run install_bins antibody
}
