pkg_set summary "A third-party, open-source ProtonMail CardDAV, IMAP and SMTP bridge"
pkg_set git.url "https://github.com/emersion/hydroxide.git"
pkg_set src.url "https://github.com/emersion/hydroxide/archive/refs/tags/v0.2.21.tar.gz"
pkg_set src.sha "efbb1fc0461b3fcca9a9e42b31c7298ef0023e458c171be0b00886f9692648c4"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/hydroxide
}
