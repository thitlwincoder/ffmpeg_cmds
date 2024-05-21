import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure Audio Signal-to-Distortion Ratio.
///
/// This filter takes two audio streams for input, and outputs first audio stream. Results are in dB per channel at end of either input.
class Asdr extends Filter {
  /// Asdr
  Asdr();

  @override
  String get name => 'asdr';

  @override
  Map<String, dynamic> get options => {};
}
