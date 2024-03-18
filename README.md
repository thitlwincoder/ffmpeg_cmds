# ffmpeg_cmds

[![Uploaded By][badge]][github]
[![License][license_badge]][license]

[ffmpeg commands](https://ffmpeg.org/ffmpeg-filters.html) for dart.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  ffmpeg_cmds: latest
```
Next, we need to install this

```sh
# Dart
dart pub get

# Flutter
flutter pub get
```

import and use it.
```dart
import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';
```

## Example

To get cmd string from [drawtext](https://ffmpeg.org/ffmpeg-filters.html#drawtext-1). You can just use `toString()`

```dart
// from
drawtext="text=Hello"

// to

DrawText(text: "Hello").toString()

'${DrawText(text: "Hello")}'
```

## Sponsoring

I'm working on my packages on my free-time, but I don't have as much time as I would. If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue][issue].
If you fixed a bug or implemented a feature, please send a [pull request][pr].

<!-- Links -->

[badge]: https://img.shields.io/badge/uploaded%20by-thitlwincoder-blue
[github]: https://github.com/thitlwincoder
[issue]: https://github.com/thitlwincoder/ffmpeg_cmds/issues
[pr]: https://github.com/thitlwincoder/ffmpeg_cmds/pulls
[license_badge]: https://img.shields.io/github/license/thitlwincoder/ffmpeg_cmds?logo=open-source-initiative&logoColor=green
[license]: https://github.com/thitlwincoder/ffmpeg_cmds/blob/main/LICENSE