pkg_set summary "Key directory that maps social media identities to encryption keys"
pkg_set webpage "https://keybase.io"
pkg_set git.url "https://github.com/keybase/client.git"
pkg_set src.url "https://github.com/keybase/client/releases/download/v6.0.1/keybase-v6.0.1.tar.xz"
pkg_set src.sha "e3d1987b2e0d61162ab3049e70f359a7e938f23398d195a1c7bf28f397a2b218"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "go"
pkg_set bscript "go"

build() {
    for item in keybase kbfs/kbfsfuse kbfs/kbfsgit/git-remote-keybase
    do
        gow -tags production ./$item || return 1
    done
}
