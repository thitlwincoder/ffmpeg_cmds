import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect the colorspace from an embedded ICC profile (if present), and update the frame’s tags accordingly.
///
/// This filter accepts the following options:
class Iccdetect extends Filter {
  /// Iccdetect
  Iccdetect({this.force});

  /// If true, the frame’s existing colorspace tags will always be overridden by values detected from an ICC profile. Otherwise, they will only be assigned if they contain `unknown`. Enabled by default.
  Object? force;

  @override
  String get name => 'iccdetect';

  @override
  Map<String, dynamic> get options => {'force': force};
}
