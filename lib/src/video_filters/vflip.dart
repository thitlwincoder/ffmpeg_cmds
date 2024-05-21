import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flip the input video vertically.
class Vflip extends Filter {
  /// Vflip
  Vflip();

  @override
  String get name => 'vflip';

  @override
  Map<String, dynamic> get options => {};
}
