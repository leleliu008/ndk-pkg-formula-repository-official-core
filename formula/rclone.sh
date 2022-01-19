package set summary "Rsync for cloud storage"
package set webpage "https://rclone.org/"
package set git.url "https://github.com/rclone/rclone.git"
package set src.url "https://github.com/rclone/rclone/archive/v1.57.0.tar.gz"
package set src.sum "294f7a6b0874509997d3a9ffae7c74f0c45b687df0ac7d7742f284ad3814fe55"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/rclone/rclone/fs.Version=v$PACKAGE_VERSION &&
    run install_mans rclone.1
}
