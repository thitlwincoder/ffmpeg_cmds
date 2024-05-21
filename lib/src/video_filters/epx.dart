import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply the EPX magnification filter which is designed for pixel art.
///
/// It accepts the following option:
class Epx extends Filter {
  /// Epx
  Epx({this.n});

  /// Set the scaling dimension: `2` for `2xEPX`, `3` for `3xEPX`. Default is `3`.
  Object? n;

  @override
  String get name => 'epx';

  @override
  Map<String, dynamic> get options => {'n': n};
}
