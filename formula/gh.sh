package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.5.1.tar.gz"
package set src.sum "89aac9c35ad875f1b17144bf9fcbfa7231554d4abce187d9277fcc83da846e4a"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
