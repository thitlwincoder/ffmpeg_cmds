import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Read vertical interval timecode (VITC) information from the top lines of a video frame.
///
/// This filter accepts the following options:
class Readvitc extends Filter {
  /// Readvitc
  Readvitc({
    this.scanMax,
    this.thrB,
    this.thrW,
  });

  /// Set the maximum number of lines to scan for VITC data. If the value is set to `-1` the full video frame is scanned. Default is `45`.
  Object? scanMax;

  /// Set the luma threshold for black. Accepts float numbers in the range \[0.0,1.0\], default value is `0.2`. The value must be equal or less than `thr_w`.
  Object? thrB;

  /// Set the luma threshold for white. Accepts float numbers in the range \[0.0,1.0\], default value is `0.6`. The value must be equal or greater than `thr_b`.
  Object? thrW;

  @override
  String get name => 'readvitc';

  @override
  Map<String, dynamic> get options =>
      {'scan_max': scanMax, 'thr_b': thrB, 'thr_w': thrW};
}
