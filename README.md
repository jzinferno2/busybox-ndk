# Building busybox with Android NDK.

BusyBox version `1.35.0`.
Android NDK version `r25`.

```
git clone --depth=1 https://github.com/mirror/busybox
./apply_patches && ./gen_headers
ndk-build -j$(nproc --all)
```
