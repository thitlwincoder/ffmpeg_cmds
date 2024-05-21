import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reverse a video clip.
///
/// Warning: This filter requires memory to buffer the entire clip, so trimming is suggested.
class Reverse extends Filter {
  /// Reverse
  Reverse();

  @override
  String get name => 'reverse';

  @override
  Map<String, dynamic> get options => {};
}
