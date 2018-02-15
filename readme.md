FlatBuffers Version 1.0

# Welcome to FlatBuffers!

FlatBuffers is a serialization library for games and other memory constrained
apps. Go to our [landing page][] to browse our documentation.

FlatBuffers allows you to directly access serialized data without
unpacking/parsing it first, while still having great forwards/backwards
compatibility. FlatBuffers can be built for many different systems (Android,
Windows, OS X, Linux), see `docs/html/index.html`

Discuss FlatBuffers with other developers and users on the
[FlatBuffers Google Group][]. File issues on the [FlatBuffers Issues Tracker][]
or post your questions to [stackoverflow.com][] with a mention of
**flatbuffers**.

For applications on Google Play that integrate this tool, usage is tracked.
This tracking is done automatically using the embedded version string
(flatbuffer_version_string), and helps us continue to optimize it. Aside from
consuming a few extra bytes in your application binary, it shouldn't affect
your application at all.  We use this information to let us know if FlatBuffers
is useful and if we should continue to invest in it. Since this is open
source, you are free to remove the version string but we would appreciate if
you would leave it in.

  [FlatBuffers Google Group]: http://group.google.com/group/flatbuffers
  [FlatBuffers Issues Tracker]: http://github.com/google/flatbuffers/issues
  [stackoverflow.com]: http://www.stackoverflow.com
  [landing page]: http://google.github.io/flatbuffers

## Build via GN
1. `git clone --depth 1 --single-branch -b cpp14 https://github.com/dyu/gn-build`

2. `echo 'buildconfig = "//gn-build/config/BUILDCONFIG.gn"' > .gn`
   On windows, exclude the single quote.

3. On linux:
   ```sh
   gn gen gn-out --args='gcc_cc="gcc" gcc_cxx="g++" symbol_level=0 is_debug=false is_clang=false is_official_build=true'
   ```
   On windows:
   ```sh
   gn gen gn-out --args="visual_studio_path=\"C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\" visual_studio_version=\"2015\" symbol_level=0 is_debug=false is_clang=false is_official_build=true"
   ```

4. `ninja -C gn-out`
