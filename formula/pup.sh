package set summary "Parse HTML at the command-line"
package set git.url "https://github.com/EricChiang/pup.git"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o pup &&
    run install_bins pup
}
