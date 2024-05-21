import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect silence in an audio stream.
///
/// This filter logs a message when it detects that the input audio volume is less or equal to a noise tolerance value for a duration greater or equal to the minimum detected noise duration.
///
/// The filter accepts the following options:
class Silencedetect extends Filter {
  /// Silencedetect
  Silencedetect({
    this.noise,
    this.n,
    this.duration,
    this.d,
    this.mono,
    this.m,
  });

  Object? noise, n;

  Object? duration, d;

  Object? mono, m;

  @override
  String get name => 'silencedetect';

  @override
  Map<String, dynamic> get options => {
        'noise': noise,
        'n': n,
        'duration': duration,
        'd': d,
        'mono': mono,
        'm': m,
      };
}
