import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter also detects out of phase and mono sequences in stereo streams. It logs the sequence start, end and duration when it lasts longer or as long as the minimum set.
///
/// The filter accepts the following options for this detection:
class PhasingDetection extends Filter {
  /// PhasingDetection
  PhasingDetection({
    this.phasing,
    this.tolerance,
    this.t,
    this.angle,
    this.a,
    this.duration,
    this.d,
  });

  /// Enable mono and out of phase detection. Default is disabled.
  Object? phasing;

  /// Set phase tolerance for mono detection, in amplitude ratio. Default is `0`. Allowed range is `\[0, 1\]`.
  Object? tolerance, t;

  /// Set angle threshold for out of phase detection, in degree. Default is `170`. Allowed range is `\[90, 180\]`.
  Object? angle, a;

  /// Set mono or out of phase duration until notification, expressed in seconds. Default is `2`.
  Object? duration, d;

  @override
  String get name => 'phasing-detection';

  @override
  Map<String, dynamic> get options => {
        'phasing': phasing,
        'tolerance': tolerance,
        't': t,
        'angle': angle,
        'a': a,
        'duration': duration,
        'd': d,
      };
}
