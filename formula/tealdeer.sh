pkg_set summary "Very fast implementation of tldr in Rust"
pkg_set git.url "https://github.com/dbrgn/tealdeer.git"
#pkg_set src.url "https://github.com/dbrgn/tealdeer/archive/v1.5.0.tar.gz"
#pkg_set src.sha "00902a50373ab75fedec4578c6c2c02523fad435486918ad9a86ed01f804358a"
pkg_set license "Apache-2.0"
pkg_set dep.pkg "openssl"
pkg_set dep.cmd "base64 patch"
pkg_set bsystem "cargo"
pkg_set install "exe"

prepare2() {
    {
        cat << EOF
LS0tIGEvc3JjL3R5cGVzLnJzCisrKyBiL3NyYy90eXBlcy5ycwpAQCAtNDMsNyArNDMsNyBAQAog
fQogCiBpbXBsIFBsYXRmb3JtVHlwZSB7Ci0gICAgI1tjZmcodGFyZ2V0X29zID0gImxpbnV4Iild
CisgICAgI1tjZmcoYW55KHRhcmdldF9vcyA9ICJsaW51eCIsIHRhcmdldF9vcyA9ICJhbmRyb2lk
IikpXQogICAgIHB1YiBmbiBjdXJyZW50KCkgLT4gU2VsZiB7CiAgICAgICAgIFNlbGY6OkxpbnV4
CiAgICAgfQpAQCAtNjYsNiArNjYsNyBAQAogCiAgICAgI1tjZmcobm90KGFueSgKICAgICAgICAg
dGFyZ2V0X29zID0gImxpbnV4IiwKKyAgICAgICAgdGFyZ2V0X29zID0gImFuZHJvaWQiLAogICAg
ICAgICB0YXJnZXRfb3MgPSAibWFjb3MiLAogICAgICAgICB0YXJnZXRfb3MgPSAiZnJlZWJzZCIs
CiAgICAgICAgIHRhcmdldF9vcyA9ICJuZXRic2QiLAo=
EOF
    } | base64 -d | patch -p1
}

prepare() {
    sed_in_place '/app_dirs = /c app_dirs = { version = "1.2.1" }' Cargo.toml
}
