package set summary "A command-line tool to do git operation with fastgit easily"
package set git.url "https://github.com/FastGitORG/fgit-go.git"
#package set src.url "https://github.com/FastGitORG/fgit-go/archive/refs/tags/0.7.tar.gz"
#package set src.sum "c1b20b623e21a3200a8c580064a5e1c19f1a7f57a523b9e75e7453f2edd3a84b"
package set license "GPL-3.0-or-later"
package set bsystem "go"

build() {
    gow -tags release -o fgit src/main.go
}
