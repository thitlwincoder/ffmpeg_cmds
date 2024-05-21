import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure Audio Scaled-Invariant Signal-to-Distortion Ratio.
///
/// This filter takes two audio streams for input, and outputs first audio stream. Results are in dB per channel at end of either input.
class Asisdr extends Filter {
  /// Asisdr
  Asisdr();

  @override
  String get name => 'asisdr';

  @override
  Map<String, dynamic> get options => {};
}
