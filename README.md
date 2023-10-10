# mpv iOS build scripts

本腳本的目的是構建 tvOS 和 iOS 可用的 mpv 靜態庫。

These are build scripts for building [libmpv](https://github.com/mpv-player/mpv), and its dependencies:

- FFmpeg
- libass
- freetype
- harfbuzz
- fribidi
- uchardet

## Configuration

Tested with:

- macOS 15
- Xcode 15

## Brew

https://gist.github.com/dbrookman/74b8bcfb37a23452f7137b83bca9580f

```
brew install pkg-config brotli
brew install --build-from-source --only-dependencies mpv
```

## 使用

1. 運行 `./install-openssl.sh` 以生成 tvOS / iOS 所需的 openssl
2. 運行 `./all.sh` 即可 `./clean.sh && ./download.sh && ./build.sh` 批量執行清理、下載、構建三個步驟。
3. 等待構建完畢即可，lib 文件夾就是所需要的靜態庫內容。

如果需要更新 openssl 版本號，修改 `install-openssl.sh` 中的 version 即可。
並非所有的 openssl 版本號都可用，最後測試 1.1.1w 可正常通過編譯。

本腳本拋棄了 development 參數，不關心 development 的可編譯性問題。

如若遇到缺少 gas-preprocessor 提示，請執行 `install-gas-preprocessor.sh`
