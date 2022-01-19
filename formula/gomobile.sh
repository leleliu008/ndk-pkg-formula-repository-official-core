package set summary "a tool for building and running mobile apps written in Go"
package set git.url "https://github.com/golang/mobile.git"
package set bsystem "go"

build() {
    for item in gobind gomobile
    do
        gow ./cmd/$item || return 1
    done
}
