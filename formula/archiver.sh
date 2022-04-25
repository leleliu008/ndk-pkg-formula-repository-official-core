pkg_set summary "Cross-platform, multi-format archive utility"
pkg_set git.url "https://github.com/mholt/archiver.git"
pkg_set src.url "https://github.com/mholt/archiver/archive/v3.5.1.tar.gz"
pkg_set src.sha "b69a76f837b6cc1c34c72ace16670360577b123ccc17872a95af07178e69fbe7"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/arc
}
