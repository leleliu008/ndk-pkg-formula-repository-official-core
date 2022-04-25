pkg_set summary "Render markdown on the CLI"
pkg_set git.url "https://github.com/charmbracelet/glow.git"
pkg_set src.url "https://github.com/charmbracelet/glow/archive/v1.4.1.tar.gz"
pkg_set src.sha "ff6dfd7568f0bac5144ffa3a429ed956dcbdb531487ef6e38ac61365322c9601"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.Version=$PACKAGE_VERSION
}
