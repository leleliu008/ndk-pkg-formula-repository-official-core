package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.32.tar.gz"
package set src.sum "0402865b8b2511c070c641935b2eaeab58424a4655d01b817e76f2c8ece6ea6e"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
