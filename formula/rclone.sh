pkg_set summary "Rsync for cloud storage"
pkg_set webpage "https://rclone.org/"
pkg_set git.url "https://github.com/rclone/rclone.git"
pkg_set src.url "https://github.com/rclone/rclone/archive/v1.58.0.tar.gz"
pkg_set src.sha "b3f953a282964d6d73a7278ccb2bb836d9aca855e9dc5fb6f4bc986b0e5656fa"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X github.com/rclone/rclone/fs.Version=v$PACKAGE_VERSION &&
    run install_mans rclone.1
}
