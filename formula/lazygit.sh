package set summary "Simple terminal UI for git commands"
package set src.git "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.31.1.tar.gz"
package set src.sum "b16d18bb15e30e25882da8cf3c1706919bc7953ea0da319f32ee503721ca88c8"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o lazygit -mod=vendor -ldflags "'-X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg'" &&
    run install_bins lazygit
}
