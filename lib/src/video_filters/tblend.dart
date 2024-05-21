import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Blend successive video frames.
class Tblend extends Filter {
  /// Tblend
  Tblend();

  @override
  String get name => 'tblend';

  @override
  Map<String, dynamic> get options => {};
}
