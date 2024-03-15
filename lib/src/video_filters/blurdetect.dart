import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Determines blurriness of frames without altering the input frames.
///
/// Based on Marziliano, Pina, et al. "A no-reference perceptual blur metric." Allows for a block-based abbreviation.
class BlurDetect implements Filter {
  /// BlurDetect
  BlurDetect({
    this.low,
    this.high,
    this.radius,
    this.blockPct,
    this.blockWidth,
    this.blockHeight,
    this.planes,
  });

  /// Set low and high threshold values used by the Canny thresholding algorithm.
  ///
  /// The high threshold selects the "strong" edge pixels, which are then connected through 8-connectivity with the "weak" edge pixels selected by the low threshold.
  ///
  /// low and high threshold values must be chosen in the range [0,1], and low should be lesser or equal to high.
  ///
  /// Default value for low is `20/255`, and default value for high is `50/255`.
  int? low, high;

  /// Define the radius to search around an edge pixel for local maxima.
  int? radius;

  /// Determine blurriness only for the most significant blocks, given in percentage.
  double? blockPct;

  /// Determine blurriness for blocks of width [blockWidth]. If set to any value smaller `1`, no blocks are used and the whole image is processed as one no matter of [blockHeight].
  int? blockWidth;

  /// Determine blurriness for blocks of height [blockHeight]. If set to any value smaller `1`, no blocks are used and the whole image is processed as one no matter of [blockWidth].
  int? blockHeight;

  /// Set planes to filter. Default is first only.
  int? planes;

  @override
  String get name => 'blurdetect';

  @override
  Map<String, dynamic> get options => {
        'low': low,
        'high': high,
        'radius': radius,
        'block_pct': blockPct,
        'block_width': blockWidth,
        'block_height': blockHeight,
        'planes': planes,
      };
}
