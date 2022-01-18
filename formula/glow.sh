package set summary "Render markdown on the CLI"
package set git.url "https://github.com/charmbracelet/glow.git"
package set src.url "https://github.com/charmbracelet/glow/archive/v1.4.1.tar.gz"
package set src.sum "ff6dfd7568f0bac5144ffa3a429ed956dcbdb531487ef6e38ac61365322c9601"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.Version=$PACKAGE_VERSION'" -o glow &&
    run install_bins glow
}
