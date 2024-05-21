import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Scale the input by 2x and smooth using the Super2xSaI (Scale and Interpolate) pixel art scaling algorithm.
///
/// Useful for enlarging pixel art images without reducing sharpness.
class Super2xsai extends Filter {
  /// Super2xsai
  Super2xsai();

  @override
  String get name => 'super2xsai';

  @override
  Map<String, dynamic> get options => {};
}
