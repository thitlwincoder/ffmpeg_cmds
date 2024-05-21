import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Swap U & V plane.
class Swapuv extends Filter {
  /// Swapuv
  Swapuv();

  @override
  String get name => 'swapuv';

  @override
  Map<String, dynamic> get options => {};
}
