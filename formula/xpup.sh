package set summary "A command line XML parsing tool"
package set git.url "https://github.com/ericchiang/xpup.git"
package set license "Apache-2.0"
package set bsystem "go"

prepare() {
    run go mod init &&
    run go mod tidy
}
