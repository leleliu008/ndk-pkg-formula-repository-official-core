# ndk-pkg-formula-repository-offical-core

the offical formula repository for [ndk-pkg](https://github.com/leleliu008/ndk-pkg)

## ndk-pkg formula

a ndk-pkg formula is a [YAML](https://yaml.org/spec/1.2.2/) format file which is used to config a ndk-pkg package's meta-information including one sentence description, package version, installation instructions, etc.

## ndk-pkg formula scheme

|KEY|required?|overview|
|-|-|-|
|`summary`|required|describe what is this package used for in one sentence.|
|`license`|optional|a space-separated list of [SPDX license short identifiers](https://spdx.github.io/spdx-spec/v2.3/SPDX-license-list/#a1-licenses-with-short-identifiers)|
|`version`|optional|the version of this package.<br>If this mapping is not present, it will be calculated from `src-url`, if `src-url` is also not present, it will be calculated from running time as format `date +%Y.%m.%d`|
||||
|`web-url`|optional|the home webpage of this package.<br>If this mapping is not present, `git-url` must be present.|
||||
|`git-url`|optional|the source code git repository.<br>If `src-url` is not present, this mapping must be present.|
|`git-ref`|optional|reference: <https://git-scm.com/book/en/v2/Git-Internals-Git-References> <br>example values: `HEAD` `refs/heads/master` `refs/heads/main` `refs/tags/v1`, default value is `HEAD`|
|`git-sha`|optional|the full git commit id, 40-byte hexadecimal string, if `git-ref` and `git-sha` both are present, `git-sha` takes precedence over `git-ref`|
|`git-nth`|optional|tell `ndk-pkg` that how many depth commits would you like to be fetched. default is `1`, this would save your time and storage. If you want to fetch all commits, set this to `0`|
||||
|`src-url`|optional|the source code download url of this package.<br>If value of this mapping ends with any one of `.zip` `.tar.xz` `.tar.gz` `.tar.lz` `.tar.bz2` `.tgz` `.txz` `.tlz` `.tbz2`, it will be uncompressed to `$PACKAGE_WORKING_DIR/src` when this package is installing, otherwise, it will be copied to `$PACKAGE_WORKING_DIR/src`<br>also support format like `dir://DIR` for local test and debug purpose|
|`src-uri`|optional|the mirror of `src-url`.|
|`src-sha`|optional|the `sha256sum` of source code.<br>`src-sha` and `src-url` must appear together.|
||||
|`fix-url`|optional|the patch file download url of this package.<br>If value of this mapping ends with any one of `.zip` `.tar.xz` `.tar.gz` `.tar.lz` `.tar.bz2` `.tgz` `.txz` `.tlz` `.tbz2`, it will be uncompressed to `$PACKAGE_WORKING_DIR/fix` when this package is installing, otherwise, it will be copied to `$PACKAGE_WORKING_DIR/fix`.|
|`fix-uri`|optional|the mirror of `fix-url`.|
|`fix-sha`|optional|the `sha256sum` of patch file.<br>`fix-sha` and `fix-url` must appear together.|
||||
|`res-url`|optional|other resource download url of this package.<br>If value of this mapping ends with any one of `.zip` `.tar.xz` `.tar.gz` `.tar.lz` `.tar.bz2` `.tgz` `.txz` `.tlz` `.tbz2`, it will be uncompressed to `$PACKAGE_WORKING_DIR/res` when this package is installing, otherwise, it will be copied to `$PACKAGE_WORKING_DIR/res`.|
|`res-uri`|optional|the mirror of `res-url`.|
|`res-sha`|optional|the `sha256sum` of resource file.<br>`res-sha` and `res-url` must appear together.|
||||
|`dep-pkg`|optional|a space-separated list of   `ndk-pkg packages` that are depended by this package when installing and/or runtime, which will be installed via [ndk-pkg](https://github.com/leleliu008/ndk-pkg).|
|`dep-upp`|optional|a space-separated list of   `uppm packages` that are depended by this package when installing and/or runtime, which will be installed via [uppm](https://github.com/leleliu008/uppm).|
|`dep-pym`|optional|a space-separated list of `python packages` that are depended by this package when installing and/or runtime, which will be installed via [pip3](https://github.com/pypa/pip).|
|`dep-plm`|optional|a space-separated list of    `perl modules` that are depended by this package when installing and/or runtime, which will be installed via [cpan](https://metacpan.org/dist/CPAN/view/scripts/cpan).|
||||
|`ppflags`|optional|append to `CPPFLAGS`|
|`ccflags`|optional|append to `CFLAGS`|
|`xxflags`|optional|append to `CXXFLAGS`|
|`ldflags`|optional|append to `LDFLAGS`|
||||
|`bsystem`|optional|build system.<br>values can be some of `autogen` `autotools` `configure` `cmake` `cmake-gmake` `cmake-ninja` `meson` `xmake` `gmake` `ninja` `cargo` `go`|
|`bscript`|optional|the directory where the build script (e.g. `configure`, `Makefile`, `CMakeLists.txt`, `meson.build`, `Cargo.toml`, etc.) is located in, relative to `PACKAGE_WORKING_DIR`.|
|`binbstd`|optional|whether build in the directory where the build script is located in, otherwise build in other directory. value can be `yes` or `no`. default value is `no`.|
||||
|`build0`|optional|POSIX shell code to be run when user run `ndk-pkg install <PKG>`. used to describe how to build for native.|
|`dopatch`|optional|POSIX shell code to be run before `install`. `pwd` is `$PACKAGE_BSCRIPT_DIR`|
|`install`|optional|POSIX shell code to be run when user run `ndk-pkg install <PKG>`. If this mapping is not present, `ndk-pkg` will run default install code according to `bsystem`|
||||
|`api-min`|optional|specify which minimum Android SDK API level is supported for this package.|

### Appendix1: commands that can be used right out of the box

|command|usage-example|
|-|-|
|`echo`|`echo 'your message.'`|
|`info`|`info 'your information.'`|
|`warn`|`warn "no package manager found."`|
|`error`|`error 'error message.'`|
|`abort`|`abort 1 "please specify a package name."`|
|`success`|`success "build success."`|
|`sed_in_place`|`sed_in_place 's/-mandroid//g' Configure`|
|`format_unix_timestamp`|`format_unix_timestamp "$TIMESTAMP_UNIX" '+%Y/%m/%d %H:%M:%S'`|
|`wfetch`|`wfetch URL [--sha256=SHA256] --output-path=PATH`<br>`wfetch URL [--sha256=SHA256] --output-dir=DIR --output-name=NAME`<br>`wfetch URL [--sha256=SHA256] --output-dir=DIR [--output-name=NAME]`<br>`wfetch URL [--sha256=SHA256] [--output-dir=DIR] --output-name=NAME`|
|||
|`configure`|`configure --enable-pic`|
|`mesonw`|`mesonw -Dneon=disabled -Darm-simd=disabled`|
|`cmakew`|`cmakew -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON`|
|`gmakew`|`gmakew`|
|`xmakew`|`xmakew`|
|`cargow`|`cargow`|
|`gow`|`gow`|

- [yq](https://mikefarah.gitbook.io/yq/)
- [jq](https://stedolan.github.io/jq/manual/)
- [curl](https://curl.se/docs/manpage.html)
- [git](https://git-scm.com/docs/git)
- [gtar](https://www.gnu.org/software/tar/manual/tar.html)
- [gzip](https://www.gnu.org/software/gzip/manual/gzip.html)
- [gsed](https://www.gnu.org/software/sed/manual/sed.html)
- [gawk](https://www.gnu.org/software/gawk/manual/gawk.html)
- [grep](https://www.gnu.org/software/grep/manual/grep.html)
- [find](https://www.gnu.org/software/findutils/manual/html_mono/find.html)
- [xargs](https://www.gnu.org/software/findutils/manual/html_node/find_html/Invoking-xargs.html)
- [tree](https://linux.die.net/man/1/tree)
- [bzip2](https://linux.die.net/man/1/bzip2)
- [xz](https://linux.die.net/man/1/xz)
- [zip](https://linux.die.net/man/1/zip)
- [unzip](https://linux.die.net/man/1/unzip)
- [bash](https://www.gnu.org/software/bash/manual/bash.html)
- [commands provided by GNU CoreUtils](https://www.gnu.org/software/coreutils/manual/coreutils.html)

### Appendix2: shell variables can be used in dopatch and install block

|variable|overview|
|-|-|
|`TIMESTAMP_UNIX`|the unix timestamp of this action.|
|||
|`NDKPKG_VERSION`|the version of `ndk-pkg`.|
|`NDKPKG_HOME`|the home directory of `ndk-pkg`.|
|`NDKPKG`|the executable filepath of `ndk-pkg`.|
|||
|`ANDROID_NDK_HOME`|the home directory of `Android NDK`.|
|`ANDROID_NDK_ROOT`|the home directory of `Android NDK`.|
|`ANDROID_NDK_VERSION`|the version of `Android NDK`.|
|`ANDROID_NDK_VERSION_MAJOR`|the major part of version of `Android NDK`.|
|`ANDROID_NDK_TOOLCHAIN_BIND`|the `bin` directory of `Android NDK`.|
|`ANDROID_NDK_SYSROOT`|the `sysroot` directory of `Android NDK`.|
|||
|`NATIVE_OS_KIND`|kind of your current running operation system.|
|`NATIVE_OS_TYPE`|type of your current running operation system.|
|`NATIVE_OS_CODE`|code of your current running operation system.|
|`NATIVE_OS_NAME`|name of your current running operation system.|
|`NATIVE_OS_VERS`|version of your current running operation system.|
|`NATIVE_OS_ARCH`|arch of your current running operation system.|
|`NATIVE_OS_NCPU`|cpu core count of your current running machine.|
|||
|`TARGET_ANDROID_API`|[android sdk api-level table](https://developer.android.google.cn/guide/topics/manifest/uses-sdk-element#api-level-table)|
|`TARGET_ANDROID_ABI`|it's value shall be any one of `armeabi-v7a` `arm64-v8a` `x86` `x86_64`|
|`TARGET_ANDROID_ARCH`|it's value shall be any one of `armv7a` `aarch64` `i686` `x86_64`|
|`TARGET_ANDROID_NBIT`|it's value shall be any one of `32` `64`|
|`TARGET_TRIPLE`|it's value shall be any one of `armv7a-linux-androideabi` `aarch64-linux-android` `i686-linux-android` `x86_64-linux-android`|
|||
|`CC`|the C Compiler.|
|`CFLAGS`|the flags of `CC`.|
|`CXX`|the C++ Compiler.|
|`CXXFLAGS`|the flags of `CXX`.|
|`CPP`|the C/C++ PreProcessor.|
|`CPPFLAGS`|the flags of `CPP`.|
|`AS`|the assembler.|
|`AR`|the archiver.|
|`RANLIB`|the archiver extra tool.|
|`LD`|the linker.|
|`LDFLAGS`|the flags of `LD`.|
|`NM`|a command line tool to list symbols from object files.|
|`STRIP`|a command line tool to discard symbols and other data from object files.|
|`READELF`|a command line tool to display information about ELF files.|
|||
|`PACKAGE_WORKING_DIR`|the working directory when installing.|
|`PACKAGE_BSCRIPT_DIR`|the directory where the build script (e.g. `Makefile`, `configure`, `CMakeLists.txt`, `meson.build`, `Cargo.toml`, etc) is located in.|
|`PACKAGE_BCACHED_DIR`|the directory where the temporary files are stored in when building.|
|`PACKAGE_INSTALL_DIR`|the directory where the final files will be installed to.|
|||
|`x_INSTALL_DIR`|the installation directory of x package.|
|`x_INCLUDE_DIR`|`$x_INSTALL_DIR/include`|
|`x_LIBRARY_DIR`|`$x_INSTALL_DIR/lib`|
