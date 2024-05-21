import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reverse an audio clip.
///
/// Warning: This filter requires memory to buffer the entire clip, so trimming is suggested.
class Areverse extends Filter {
  /// Areverse
  Areverse();

  @override
  String get name => 'areverse';

  @override
  Map<String, dynamic> get options => {};
}
