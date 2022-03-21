package set summary "Rsync for cloud storage"
package set webpage "https://rclone.org/"
package set git.url "https://github.com/rclone/rclone.git"
package set src.url "https://github.com/rclone/rclone/archive/v1.58.0.tar.gz"
package set src.sum "b3f953a282964d6d73a7278ccb2bb836d9aca855e9dc5fb6f4bc986b0e5656fa"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/rclone/rclone/fs.Version=v$PACKAGE_VERSION &&
    run install_mans rclone.1
}
