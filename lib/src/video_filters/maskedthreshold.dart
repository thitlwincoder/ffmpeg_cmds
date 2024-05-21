import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pick pixels comparing absolute difference of two video streams with fixed threshold.
///
/// If absolute difference between pixel component of first and second video stream is equal or lower than user supplied threshold than pixel component from first video stream is picked, otherwise pixel component from second video stream is picked.
///
/// This filter accepts the following options:
class Maskedthreshold extends Filter {
  /// Maskedthreshold
  Maskedthreshold({
    this.threshold,
    this.planes,
    this.mode,
  });

  /// Set threshold used when picking pixels from absolute difference from two input video streams.
  Object? threshold;

  /// Set which planes will be processed as bitmap, unprocessed planes will be copied from second stream. By default value 0xf, all planes will be processed.
  Object? planes;

  /// Set mode of filter operation. Can be `abs` or `diff`. Default is `abs`.
  Object? mode;

  @override
  String get name => 'maskedthreshold';

  @override
  Map<String, dynamic> get options =>
      {'threshold': threshold, 'planes': planes, 'mode': mode};
}
