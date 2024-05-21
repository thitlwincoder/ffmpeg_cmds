import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure Audio Peak Signal-to-Noise Ratio.
///
/// This filter takes two audio streams for input, and outputs first audio stream. Results are in dB per channel at end of either input.
class Apsnr extends Filter {
  /// Apsnr
  Apsnr();

  @override
  String get name => 'apsnr';

  @override
  Map<String, dynamic> get options => {};
}
