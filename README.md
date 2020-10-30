# ndk-pkg-formula
the formula repository for [ndk-pkg](https://github.com/leleliu008/ndk-pkg)

## what's formula
formula is a POSIX sh script used to describe how to compile a package for [ndk-pkg](https://github.com/leleliu008/ndk-pkg).

## the variable can be declared in a formula
|variable|required?|overview|
|-|-|-|
|`summary`|required|the summary of this package.|
|`homepage`|required|the homepage of this package.|
|`url`|required|the source code download url of this package. the value of `url` must end with one of `.git` `.zip` `.tar.xz` `.tar.gz` `.tar.bz2` `.tar.tgz` `.tar.txz`|
|`sha256`|optional|the `sha256sum` of source code. If the value of `url` end with `.git`, this variable is optional, otherwise, this variable must be declared.|
|`version`|optional|the version of this package. If this variable is not declared, it will be calculated from `url`.|
|`dependencies`|optional|the dependencies of this package. If specify multiple values, separate them with spaces.|

## the variable can be used in a formula
|variable|overview|
|-|-|
|`TIMESTAMP_UNIX`|the unix timestamp of this installation.|
|||
|`ANDROID_NDK_VERSION`|the version of `Android NDK`.|
|`ANDROID_NDK_HOME`|the home directory of `Android NDK`.|
|||
|`MY_VERSION`|the version of `ndk-pkg`.|
|`MY_HOME_DIR`|the home directory of `ndk-pkg`.|
|`MY_HOME_PAGE`|the home webpage of `ndk-pkg`.|
|`MY_CACHED_DIR`|the downloads directory of `ndk-pkg`.|
|`MY_INSTALL_DIR`|the installed directory of `ndk-pkg`.|
|`MY_FORMULA_REPO_URL`|the formula repository of `ndk-pkg`. default is `https://github.com/leleliu008/ndk-pkg-formula.git`. this value can be override by `NDK_PKG_FORMULA_REPO_URL` enviroment variable.|
|||
|`MIN_SDK_API_LEVEL`|[android sdk api-level table](https://developer.android.google.cn/guide/topics/manifest/uses-sdk-element#api-level-table)|
|||
|`WORKING_DIR`|the direcotory where the source code tarball uncompressed to or copy to.|
|`SOURCE_DIR`|the source code directory of this installation. `the source code direcotory` is the direcotory who contains `Makefile` or `configure` or `CMakeLists.txt` or `meson.build`|
|`BUILD_DIR`|the build directory of this abi.|
|`PKG_INSTALL_DIR`|the installation directory of this package.|
|`ABI_INSTALL_DIR`|the installation directory of this package of this abi.|
|`x_INSTALL_DIR`|the installation directory of x package of this abi.|
|`x_INCLUDE_DIR`|the include directory of x package of this abi.|
|`x_LIBRARY_DIR`|the lib directory of x package of this abi.|
|||
|`BUILD_FOR_ABI`|it's value may be one of `armeabi-v7a` `arm64-v8a` `x86` `x86_64`|
|`BUILD_FOR_ARCH`|it's value may be one of `arm` `arm64` `x86` `x86_64`|
|`BUILD_FOR_HOST`|it's value may be one of `armv7a-linux-androideabi` `aarch64-linux-android` `i686-linux-android` `x86_64-linux-android`|
|||
|`SYSROOT`||
|`SYSTEM_INCLUDE_DIR`||
|`SYSTEM_LIBRARY_DIR`||
|`CC`|the C Compiler for `BUILD_FOR_ABI`.|
|`CFLAGS`|the flags of `CC`.|
|`CXX`|the C++ Compiler for `BUILD_FOR_ABI`.|
|`CXXFLAGS`|the flags of `CXX`.|
|`CPPFLAGS`|the flags of `C PreProcessor`.|
|`AS`|the assembler.|
|`AR`|the archiver.|
|`RANLIB`|the archiver extra tool.|
|`LD`|the linker.|
|`LDFLAGS`|the flags of `LD`.|
|`NM`|a command line tool to list symbols from object files.|
|`STRIP`|a command line tool to discard symbols and other data from object files.|

## the function can be declared in a formula
|function|required?|overview|
|-|-|-|
|`prepare`|optional|this function only run once.|
|`build`|required|this function will run 4 times. each time build for one abi ( armeabi-v7a, arm64-v8a, x86, x86_64 ).|

## the function can be used in a formula
|function|example|
|-|-|
|`msg`|`msg 'your message.'`|
|`echo`|`echo 'your message.'`|
|`info`|`info 'your infomation.'`|
|`warn`|`warn "--min-sdk-api-level=INTEGER argument is not specified. so, use the default value [21]."`|
|`error`|`error 'error message.'`|
|`die`|`die "please specify a package name."`|
|`success`|`success "build success."`|
|`nproc`|`make --directory="$BUILD_DIR" -j$(nproc)`|
|`sed_in_place`|`sed_in_place 's/-mandroid//g' Configure`|
|`format_unix_timestamp`|`format_unix_timestamp "$TIMESTAMP_UNIX" '+%Y/%m/%d %H:%M:%S'`|
|`getvalue`|`VALUE=$(getvalue --min-sdk-api-level=21)`|
|`sha256sum`|`VALUE=$(sha256sum FILEPATH)`|
|`is_sha256sum_match`|`is_sha256sum_match FILEPATH SHA256SUM`|
|`fetch`|`fetch URL [--output-dir=DIR --output-name=NAME --sha256=SHA256]`|
|`fetch_config_sub`|`fetch_config_sub     [DIR]`|
|`fetch_config_guess`|`fetch_config_guess [DIR]`|
|`configure`|`configure --enable-pic`|
|`cmake`|`cmake -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON`|
|`meson`|`meson -Dneon=disabled -Darm-simd=disabled`|
