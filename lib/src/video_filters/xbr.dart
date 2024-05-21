import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following option:
class Xbr extends Filter {
  /// Xbr
  Xbr({this.n});

  /// Set the scaling dimension: `2` for `2xBR`, `3` for `3xBR` and `4` for `4xBR`. Default is `3`.
  Object? n;

  @override
  String get name => 'xbr';

  @override
  Map<String, dynamic> get options => {'n': n};
}
