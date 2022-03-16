package set summary "Lightweight implementation of the Ruby language"
package set webpage "https://mruby.org/"
package set git.url "https://github.com/mruby/mruby.git"
package set src.url "https://github.com/mruby/mruby/archive/3.0.0.tar.gz"
package set src.sum "95b798cdd931ef29d388e2b0b267cba4dc469e8722c37d4ef8ee5248bc9075b0"
package set license "MIT"
package set dep.pkg "readline"
package set dep.cmd "bison cc"
package set bsystem "rake"
package set binsrcd "yes"

prepare() {
    cat > build_config/android.rb <<EOF
MRuby::CrossBuild.new('android') do |conf|
  params = {
    :arch => ENV['TARGET_OS_ABI'],
    :platform => 'android-' + ENV['TARGET_OS_VERS'],
    :toolchain => :clang,
  }
  toolchain :android, params

  conf.cc.command = ENV['CC_FOR_TARGET'] || 'clang'
  conf.cc.flags << ENV['CFLAGS_FOR_TARGET'] || ''
  conf.linker.command = conf.cc.command
  conf.linker.flags << ENV['LDFLAGS_FOR_TARGET'] || ''

  conf.gembox 'default'
end
EOF
    cat > patch.patch <<EOF
--- a/tasks/toolchains/android.rake
+++ b/tasks/toolchains/android.rake
@@ -218,7 +218,7 @@
       end
     end
     if Integer(@platform.rpartition('-')[2]) < 21
-      case arch
+      case nil
       when /arm64-v8a/, /x86_64/, /mips64/
         raise NotImplementedError, "Platform (#{@platform}) has no implementation for architecture (#{arch})"
       end
@@ -252,7 +252,7 @@
   def ar
     case toolchain
     when :gcc   then bin_gcc('ar')
-    when :clang then bin_gcc('ar')
+    when :clang then bin('llvm-ar')
     end
   end
 
@@ -271,7 +271,7 @@
       when /mips/         then flags += %W(-march=mips32)
       end
     when :clang
-      case arch
+      case nil
       when /armeabi-v7a/  then flags += %W(-target armv7-none-linux-androideabi)
       when /armeabi/      then flags += %W(-target armv5te-none-linux-androideabi)
       when /arm64-v8a/    then flags += %W(-target aarch64-none-linux-android)
@@ -282,7 +282,7 @@
       end
     end
 
-    case arch
+    case nil
     when /armeabi-v7a/  then flags += %W(-mfpu=#{armeabi_v7a_mfpu} -mfloat-abi=#{armeabi_v7a_mfloat_abi})
     when /armeabi/      then flags += %W(-mtune=xscale -msoft-float)
     when /arm64-v8a/    then flags += %W()
@@ -304,12 +304,12 @@
       flags += %W(-U_WIN32 -U_WIN64)
     end
 
-    flags += %W(-MMD -MP -D__android__ -DANDROID --sysroot="#{sysroot}")
+    flags += %W(-MMD -MP -D__android__ -DANDROID)
     flags += ctarget
     case toolchain
     when :gcc
     when :clang
-      flags += %W(-gcc-toolchain "#{gcc_toolchain_path}" -Wno-invalid-command-line-argument -Wno-unused-command-line-argument)
+      flags += %W(-Wno-invalid-command-line-argument -Wno-unused-command-line-argument)
     end
     flags += %W(-fpic -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes)
 
@@ -319,8 +319,6 @@
   def ldflags
     flags = []
 
-    flags += %W(--sysroot="#{sysroot}")
-
     flags
   end
 
@@ -333,8 +331,7 @@
       when /armeabi-v7a/  then flags += %W(-Wl#{no_warn_mismatch})
       end
     when :clang
-      flags += %W(-gcc-toolchain "#{gcc_toolchain_path.to_s}")
-      case arch
+      case nil
       when /armeabi-v7a/  then flags += %W(-target armv7-none-linux-androideabi -Wl,--fix-cortex-a8#{no_warn_mismatch})
       when /armeabi/      then flags += %W(-target armv5te-none-linux-androideabi)
       when /arm64-v8a/    then flags += %W(-target aarch64-none-linux-android)
EOF
    patch -p1 < patch.patch
}

build() {
    export      CC_FOR_TARGET="$CC"
	export  CFLAGS_FOR_TARGET="$CPPFLAGS $CFLAGS -DMRB_USE_READLINE"
	export LDFLAGS_FOR_TARGET="$LDFLAGS -lncurses -lreadline"

    unset CPPFLAGS
    unset   CFLAGS
    unset  LDFLAGS

	export CC="$CC_FOR_BUILD"
	export LD="$CC_FOR_BUILD"

    export TARGET_OS_ABI
    export TARGET_OS_VERS

	export MRUBY_CONFIG=android

    run rm -rf build/android
	run rake || return 1

    run install_bins build/android/bin/*   || return 1
    run install_libs build/android/lib/*.a || return 1
    run cp -r build/android/include "$TARGET_INSTALL_DIR" || return 1
}
