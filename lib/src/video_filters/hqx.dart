import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a high-quality magnification filter designed for pixel art. This filter was originally created by Maxim Stepin.
///
/// It accepts the following option:
class Hqx extends Filter {
  /// Hqx
  Hqx({this.n});

  /// Set the scaling dimension: `2` for `hq2x`, `3` for `hq3x` and `4` for `hq4x`. Default is `3`.
  Object? n;

  @override
  String get name => 'hqx';

  @override
  Map<String, dynamic> get options => {'n': n};
}
