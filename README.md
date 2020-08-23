# ndk-pkg-formula
the formula repository for [ndk-pkg](https://github.com/leleliu008/ndk-pkg)

## what's formula
formula is a POSIX sh script used to describe how to compile a package for [ndk-pkg](https://github.com/leleliu008/ndk-pkg).

## the variable can be declared in a formula
|variable|required?|overview|
|-|-|-|
|`summary`|required|the summary of this package.|
|`homepage`|required|the homepage of this package.|
|`url`|required|the source code download url of this package.|
|`sha256`|required|the sha256sum of source code.|
|`version`|optional|the version of this package.|
|`dependencies`|optional|the dependencies of this package. If specify multiple values, separate them with spaces.|

## the variable can be used in a formula
|variable|overview|
|-|-|
|`TIMESTAMP_UNIX`|the unix timestamp of this installation.|
|||
|`NDK_PKG_VERSION`|the version of `ndk-pkg`.|
|`NDK_PKG_HOME`|the home directory of `ndk-pkg`.|
|||
|`ANDROID_NDK_VERSION`|the version of `Android NDK`.|
|`ANDROID_NDK_HOME`|the home directory of `Android NDK`.|
|||
|`DIR_DOWNLOAD`|the downloads directory of ndk-pkg.|
|`DIR_PKG`|the pkg directory of ndk-pkg.|
|`DIR_SRC`|the source code directory of this package.|
|`DIR_BUILD`|the build directory of this abi.|
|`DIR_INSTALL_PACKAGE`|the installation directory of this package.|
|`DIR_INSTALL_PREFIX`|the installation directory of this abi.|
|`x_DIR_INSTALL_PREFIX`|the installation directory of x abi.|
|`x_DIR_INCLUDE`|the include directory of x abi.|
|`x_DIR_LIB`|the lib directory of x abi.|
|`TARGET_ABIS`|the supported target abis.|
|`TARGET_ABI`|build for `TARGET_ABI`. it's value may be one of `armeabi-v7a`, `arm64-v8a`, `x86`, `x86_64`|
|`TARGET_API`|build for `TARGET_API`.|
|`TARGET_HOST`|it's value may be one of `armv7a-linux-androideabi`, `aarch64-linux-android`, `i686-linux-android`, `x86_64-linux-android`|
|`TARGET_ARCH`|it's value may be one of `arm`, `arm64`, `x86`, `x86_64`|
|`TOOLCHAIN_PREFIX`||
|`CMAKE_TOOLCHAIN_FILE`||
|`SYSROOT`||
|`CC`|the C Compiler for `TARGET_ABI`.|
|`CXX`|the C++ Compiler for `TARGET_ABI`.|
|`CFLAGS`|the flags of `CC`.|
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
|`warn`|`warn "--target-api=VALUE argument is not specified. so, use the default value [21]."`|
|`error`|`error 'error message.'`|
|`die`|`die "please specify a package name."`|
|`success`|`success "build success."`|
|`nproc`|`make --directory="$DIR_BUILD" -j$(nproc) install`|
|`sed_in_place`|`sed_in_place 's/-mandroid//g' Configure`|
|`format_unix_timestamp`|`format_unix_timestamp "$TIMESTAMP_UNIX" '+%Y/%m/%d %H:%M:%S'`|
|`getvalue`|`VALUE=$(getvalue --target-abi=armv7a)`|
|`is_sha256sum_match`|`is_sha256sum_match FILE SHA256SUM`|
|`fetch`|`fetch URL [--output-dir=DIR --output-name=NAME --sha256=SHA256]`|
|`fetch_config_sub`|`fetch_config_sub     [DIR]`|
|`fetch_config_guess`|`fetch_config_guess [DIR]`|
