import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Pp7 extends Filter {
  /// Pp7
  Pp7({
    this.qp,
    this.mode,
  });

  /// Force a constant quantization parameter. It accepts an integer in range 0 to 63. If not set, the filter will use the QP from the video stream (if available).
  Object? qp;

  /// Set thresholding mode. Available modes are:
  /// - `hard` Set hard thresholding.
  /// - `soft` Set soft thresholding (better de-ringing effect, but likely blurrier).
  /// - `medium` Set medium thresholding (good results, default).
  Object? mode;

  @override
  String get name => 'pp7';

  @override
  Map<String, dynamic> get options => {'qp': qp, 'mode': mode};
}
