pkg_set summary "Rsync for cloud storage"
pkg_set webpage "https://rclone.org/"
pkg_set git.url "https://github.com/rclone/rclone.git"
pkg_set src.url "https://github.com/rclone/rclone/archive/v1.58.1.tar.gz"
pkg_set src.sha "b1fe94642547d63ce52cdc49a06696e8b478a04ca100ab4ab1c92ff7157177a9"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X github.com/rclone/rclone/fs.Version=v$PACKAGE_VERSION &&
    run install_mans rclone.1
}
