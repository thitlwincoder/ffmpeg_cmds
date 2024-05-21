import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This filter applies a global color histogram equalization on a per-frame basis.
///
/// It can be used to correct video that has a compressed range of pixel intensities. The filter redistributes the pixel intensities to equalize their distribution across the intensity range. It may be viewed as an "automatically adjusting contrast filter". This filter is useful only for correcting degraded or poorly captured source video.
///
/// The filter accepts the following options:
class Histeq extends Filter {
  /// Histeq
  Histeq({
    this.strength,
    this.intensity,
    this.antibanding,
  });

  /// Determine the amount of equalization to be applied. As the strength is reduced, the distribution of pixel intensities more-and-more approaches that of the input frame. The value must be a float number in the range \[0,1\] and defaults to 0.200.
  Object? strength;

  /// Set the maximum intensity that can generated and scale the output values appropriately. The strength should be set as desired and then the intensity can be limited if needed to avoid washing-out. The value must be a float number in the range \[0,1\] and defaults to 0.210.
  Object? intensity;

  /// Set the antibanding level. If enabled the filter will randomly vary the luminance of output pixels by a small amount to avoid banding of the histogram. Possible values are `none`, `weak` or `strong`. It defaults to `none`.
  Object? antibanding;

  @override
  String get name => 'histeq';

  @override
  Map<String, dynamic> get options => {
        'strength': strength,
        'intensity': intensity,
        'antibanding': antibanding,
      };
}
