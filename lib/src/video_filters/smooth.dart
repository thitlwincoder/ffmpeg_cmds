import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Smooth the input video.
class Smooth extends Filter {
  /// Smooth
  Smooth();

  @override
  String get name => 'smooth';

  @override
  Map<String, dynamic> get options => {};
}
