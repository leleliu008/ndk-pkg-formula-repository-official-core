package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set src.git "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.503.tar.gz"
package set src.sum "e53d0b9c01c47c26665171edaab198eabc0d17d481b3f8b5b339c49ba9877e01"
package set dep.cmd "patch"
package set bsystem "cmake"

prepare() {
    sed_in_place '/pthread/d' CMakeLists.txt &&
    patch -p1 <<EOF
diff --git a/CLI/FileUtils.cpp b/CLI/FileUtils.cpp
index 0702b74..fff5e42 100644
--- a/CLI/FileUtils.cpp
+++ b/CLI/FileUtils.cpp
@@ -142,6 +142,7 @@ static bool traverseDirectoryRec(const std::string& path, const std::function<vo
             joinPaths(buf, path.c_str(), data.d_name);

             int type = data.d_type;
+            int mode = -1;

             // we need to stat DT_UNKNOWN to be able to tell the type
             if (type == DT_UNKNOWN)
@@ -153,18 +154,18 @@ static bool traverseDirectoryRec(const std::string& path, const std::function<vo
                 lstat(buf.c_str(), &st);
 #endif

-                type = IFTODT(st.st_mode);
+                mode = st.st_mode;
             }

-            if (type == DT_DIR)
+            if (type == DT_DIR || mode == S_IFDIR)
             {
                 traverseDirectoryRec(buf, callback);
             }
-            else if (type == DT_REG)
+            else if (type == DT_REG || mode == S_IFREG)
             {
                 callback(buf);
             }
-            else if (type == DT_LNK)
+            else if (type == DT_LNK || mode == S_IFLNK)
             {
                 // Skip symbolic links to avoid handling cycles
             }
EOF
}

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
