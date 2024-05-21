import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Auto-detect the crop size.
///
/// It accepts the following parameters:
class Cropdetect extends Filter {
  /// Cropdetect
  Cropdetect({
    this.mode,
    this.limit,
    this.round,
    this.skip,
    this.resetCount,
    this.reset,
    this.mvThreshold,
    this.low,
    this.high,
  });

  /// Depending on mode crop detection is based on either the mere black value of surrounding pixels or a combination of motion vectors and edge pixels.
  /// - `black` Detect black pixels surrounding the playing video. For fine control use option limit.
  /// - `mvedges` Detect the playing video by the motion vectors inside the video and scanning for edge pixels typically forming the border of a playing video.
  Object? mode;

  /// Set higher black value threshold, which can be optionally specified from nothing (0) to everything (255 for 8-bit based formats). An intensity value greater to the set value is considered non-black. It defaults to 24. You can also specify a value between 0.0 and 1.0 which will be scaled depending on the bitdepth of the pixel format.
  Object? limit;

  /// The value which the width/height should be divisible by. It defaults to 16. The offset is automatically adjusted to center the video. Use 2 to get only even dimensions (needed for 4:2:2 video). 16 is best when encoding to most video codecs.
  Object? round;

  /// Set the number of initial frames for which evaluation is skipped. Default is 2. Range is 0 to INT_MAX.
  Object? skip;

  /// Set the counter that determines after how many frames cropdetect will reset the previously detected largest video area and start over to detect the current optimal crop area. Default value is 0./// This can be useful when channel logos distort the video area. 0 indicates ’never reset’, and returns the largest area encountered during playback.
  Object? resetCount, reset;

  /// Set motion in pixel units as threshold for motion detection. It defaults to 8.
  Object? mvThreshold;

  /// Set low and high threshold values used by the Canny thresholding algorithm./// The high threshold selects the "strong" edge pixels, which are then connected through 8-connectivity with the "weak" edge pixels selected by the low threshold./// low and high threshold values must be chosen in the range \[0,1\], and low should be lesser or equal to high./// Default value for low is `5/255`, and default value for high is `15/255`.
  Object? low;

  Object? high;

  @override
  String get name => 'cropdetect';

  @override
  Map<String, dynamic> get options => {
        'mode': mode,
        'limit': limit,
        'round': round,
        'skip': skip,
        'reset_count': resetCount,
        'reset': reset,
        'mv_threshold': mvThreshold,
        'low': low,
        'high': high,
      };
}
