summary  "Portable abstraction of the hierarchical topology of modern architectures"
homepage "https://www.open-mpi.org/projects/hwloc"
url      "https://www.open-mpi.org/software/hwloc/v2.3/downloads/hwloc-2.3.0.tar.bz2"
sha256   "b607f6097873f69ef6b4b01e66e0dcb45f9939e8979827284664bbf0d4018a64"
license  "BSD-3-Clause"
dependencies "libxml2"

build() {
    configure
}
