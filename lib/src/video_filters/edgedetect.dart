import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect and draw edges. The filter uses the Canny Edge Detection algorithm.
///
/// The filter accepts the following options:
class Edgedetect extends Filter {
  /// Edgedetect
  Edgedetect({
    this.low,
    this.high,
    this.mode,
    this.planes,
  });

  /// Set low and high threshold values used by the Canny thresholding algorithm./// The high threshold selects the "strong" edge pixels, which are then connected through 8-connectivity with the "weak" edge pixels selected by the low threshold./// low and high threshold values must be chosen in the range \[0,1\], and low should be lesser or equal to high./// Default value for low is `20/255`, and default value for high is `50/255`.
  Object? low;

  /// Define the drawing mode.
  /// - `wires` Draw white/gray wires on black background.
  /// - `colormix` Mix the colors to create a paint/cartoon effect.
  /// - `canny` Apply Canny edge detector on all selected planes.

  /// Default value is wires.
  Object? high;

  /// Select planes for filtering. By default all available planes are filtered.
  Object? mode;

  Object? planes;

  @override
  String get name => 'edgedetect';

  @override
  Map<String, dynamic> get options =>
      {'low': low, 'high': high, 'mode': mode, 'planes': planes};
}
