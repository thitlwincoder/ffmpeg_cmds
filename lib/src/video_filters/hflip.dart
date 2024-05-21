import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flip the input video horizontally.
class Hflip extends Filter {
  /// Hflip
  Hflip();

  @override
  String get name => 'hflip';

  @override
  Map<String, dynamic> get options => {};
}
