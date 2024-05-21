import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect frozen video.
///
/// This filter logs a message and sets frame metadata when it detects that the input video has no significant change in content during a specified duration. Video freeze detection calculates the mean average absolute difference of all the components of video frames and compares it to a noise floor.
///
/// The filter accepts the following options:
class Freezedetect extends Filter {
  /// Freezedetect
  Freezedetect({
    this.noise,
    this.n,
    this.duration,
    this.d,
  });

  /// Set noise tolerance. Can be specified in dB (in case "dB" is appended to the specified value) or as a difference ratio between 0 and 1. Default is -60dB, or 0.001.
  Object? noise, n;

  /// Set freeze duration until notification (default is 2 seconds).
  Object? duration, d;

  @override
  String get name => 'freezedetect';

  @override
  Map<String, dynamic> get options =>
      {'noise': noise, 'n': n, 'duration': duration, 'd': d};
}
