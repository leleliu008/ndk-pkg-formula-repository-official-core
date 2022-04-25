pkg_set summary "a tool for building and running mobile apps written in Go"
pkg_set git.url "https://github.com/golang/mobile.git"
pkg_set license ";LICENSE;https://raw.githubusercontent.com/golang/mobile/master/LICENSE"
pkg_set bsystem "go"

build() {
    for item in gobind gomobile
    do
        gow ./cmd/$item || return 1
    done
}
