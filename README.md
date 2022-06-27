# ndk-pkg-formula-repository
the offical formula repository for [ndk-pkg](https://github.com/leleliu008/ndk-pkg)

## what's formula
formula is a POSIX sh script that is used to describe how to compile a package for [ndk-pkg](https://github.com/leleliu008/ndk-pkg).

## the function must be invoked on top of the formula
```
pkg_set <KEY> <VALUE>
```
|KEY|required?|overview|
|-|-|-|
|`summary`|required|the summary of this package.|
|`webpage`|optional|the home webpage of this package.<br>If this key is not present, `git.url` must be present.|
|`version`|optional|the version of this package.<br>If this key is not present, it will be calculated from `src.url`|
|`license`|optional|a list of space-separated licenses. each list item has form: `[LICENSE-NAME][;LICENSE-FILEPATH-IN-SRC][;LICENSE-URL]`. if `LICENSE-FILEPATH-IN-SRC` and `LICENSE-URL` are not given, `LICENSE-NAME` should be found in [SPDX license list](https://spdx.github.io/spdx-spec/SPDX-license-list/). if value is not given, package can not be deployed to maven central.|
|`developer`|optional|a list of space-separated developers, each list item has form: `[DEVELOPER-NAME][;DEVELOPER-EMAIL][;DEVELOPER-ORGANIZATION-NAME][;DEVELOPER-ORGANIZATION-URL]`.|
||||
|`git.url`|optional|the source code git repository.<br>must end with `.git`|
|`git.sha`|optional|the full git commit id, 40-byte hexadecimal string, which to be fetched as source code|
|`git.tag`|optional|the git tag name, which to be fetched as source code|
||||
|`src.url`|required|the source code download url of this package.<br>must end with one of `.git` `.zip` `.tar.xz` `.tar.gz` `.tar.lz` `.tar.bz2` `.tgz` `.txz` `.c` `.cc` `.cxx` `.cpp`.<br>also support format like `dir://DIR`|
|`src.sha`|optional|the `sha256sum` of source code.<br>If the value of `src.url` end with `.git`, this key is optional, otherwise, this key must be present.|
||||
|`fix.url`|optional|the patch file download url of this package.<br>must end with one of `.fix` `.diff` `.patch` `.zip` `.tar.xz` `.tar.gz` `.tar.lz` `.tar.bz2` `.tgz` `.txz`|
|`fix.sha`|optional|the `sha256sum` of patch file.|
||||
|`dep.cmd`|optional|a list of space-separated commands which will be used when installing.|
|`dep.pkg`|optional|a list of space-separated packages which will be used when installing and runtime.|
||||
|`cdefine`|optional|append to `CPPFLAGS`|
|`ccflags`|optional|append to `CFLAGS`|
|`xxflags`|optional|append to `CXXFLAGS`|
|`ldflags`|optional|append to `LDFLAGS`|
||||
|`bsystem`|optional|a list of space-separated build-systems which will be used when installing. list item shall be `autogen` `autotools` `configure` `cmake` `cmake-gmake` `cmake-ninja` `meson` `xmake` `gmake` `ninja` `cargo` `go` `ndk-build`|
|`bscript`|optional|where the build script is located in, relative to `PACKAGE_WORKING_DIR`. the build script (such as `autogen.sh`, `configure.ac`, `configure`, `Makefile`, `CMakeLists.txt`, `meson.build`, `Cargo.toml`, `xmake.lua`, etc.)|
|`binbstd`|optional|whether build in build script directory or not. value shall be `yes` or `no`. If `no`, this package would be built in build directory.|
|`parallel`|optional|whether build in parallel or not. value shall be `yes` or `no`. default value is `yes`.|

## the function can be declared in a formula
|function|required?|overview|
|-|-|-|
|`prepare(){}`|optional|this function only run once.|
|`build0(){}`|optional|this function only run once. build for native.|
|`build(){}`|required|this function will run 4 times. each time build for one abi ( `armeabi-v7a`, `arm64-v8a`, `x86`, `x86_64` ).|

## the function can be invoked in a formula at anywhere
|function|example|
|-|-|
|`echo`|`echo 'your message.'`|
|`info`|`info 'your infomation.'`|
|`warn`|`warn "--min-sdk-api-level=INTEGER argument is not specified. so, use the default value [21]."`|
|`error`|`error 'error message.'`|
|`die`|`die "please specify a package name."`|
|`success`|`success "build success."`|
|`sed_in_place`|`sed_in_place 's/-mandroid//g' Configure`|
|`format_unix_timestamp`|`format_unix_timestamp "$TIMESTAMP_UNIX" '+%Y/%m/%d %H:%M:%S'`|
|`getvalue`|`VALUE=$(getvalue --min-sdk-api-level=21)`|
|`sha256sum`|`VALUE=$(sha256sum FILEPATH)`|
|`is_sha256sum_match`|`is_sha256sum_match FILEPATH SHA256SUM`|
|`fetch`|`fetch URL [--sha256=SHA256] --output-path=PATH`<br>`fetch URL [--sha256=SHA256] --output-dir=DIR --output-name=NAME`<br>`fetch URL [--sha256=SHA256] --output-dir=DIR [--output-name=NAME]`<br>`fetch URL [--sha256=SHA256] [--output-dir=DIR] --output-name=NAME`|

## the function can be invoked in build function only
|function|example|
|-|-|
|`configure`|`configure --enable-pic`|
|`mesonw`|`mesonw -Dneon=disabled -Darm-simd=disabled`|
|`cmakew`|`cmakew -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON`|
|`xmakew`|`xmakew`|
|`gmakew`|`gmakew`|
|`cargow`|`cargow`|
|`gow`|`gow`|

## the variable can be used in a formula at anywhere
|variable|overview|
|-|-|
|`MY_VERSION`|the version of `ndk-pkg`.|
|`MY_HOME_DIR`|the home directory of `ndk-pkg`.|
|`MY_HOME_PAGE`|the home webpage of `ndk-pkg`.|
|`MY_SOURCE_DIR`|the source code store directory of `ndk-pkg`.|
|`MY_INSTALL_DIR`|the installed packages directory of `ndk-pkg`.|
|`TIMESTAMP_UNIX`|the unix timestamp of this installation.|

## the variable can be used in prepare and build function
|variable|overview|
|-|-|
|`ANDROID_NDK_VERS`|the version of `Android NDK`.|
|`ANDROID_NDK_HOME`|the home directory of `Android NDK`.|
|`ANDROID_NDK_ROOT`|the home directory of `Android NDK`.|
|||
|`TARGET_OS_VERS`|[android sdk api-level table](https://developer.android.google.cn/guide/topics/manifest/uses-sdk-element#api-level-table)|
|||
|`PACKAGE_WORKING_DIR`|the direcotory where for installing.|
|`PACKAGE_SRC_TOP_DIR`|the direcotory where the source code tarball will be uncompressed to or copied to.|
|`PACKAGE_BSCRIPT_DIR`|the direcotory where the build script is located(build script filename: `Makefile` or `configure` or `CMakeLists.txt` or `meson.build` or `Cargo.toml`)|
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
|`OBJDUMP`|a command line tool to display information from object files.|
|`OBJCOPY`|a command line tool to copies a binary file.|
|`READELF`|a command line tool to display information about the contents of ELF format files.|

## the variable can be used in build function only
|variable|overview|
|-|-|
|`TARGET_WORKING_DIR`|the working directory of this abi.|
|`TARGET_BUILDIN_DIR`|the directory where to store the temp files when building.|
|`TARGET_INSTALL_DIR`|the installation directory of this package of this abi.|
|||
|`x_INSTALL_DIR`|the installation directory of x package of this abi.|
|`x_INCLUDE_DIR`|the `include` directory of x package of this abi.|
|`x_LIBRARY_DIR`|the `lib` directory of x package of this abi.|
|||
|`TARGET_OS_ABI`|it's value shall be one of `armeabi-v7a` `arm64-v8a` `x86` `x86_64`|
|`TARGET_OS_ARCH`|it's value shall be one of `armv7a` `aarch64` `i686` `x86_64`|
|`TARGET_TRIPLE`|it's value shall be one of `armv7a-linux-androideabi` `aarch64-linux-android` `i686-linux-android` `x86_64-linux-android`|
|||
|`SYSROOT`||
|`SYSTEM_INCLUDE_DIR`||
|`SYSTEM_LIBRARY_DIR`||
