import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Create mask from input video.
///
/// This filter accepts the following options:
class Maskfun extends Filter {
  /// Maskfun
  Maskfun({
    this.low,
    this.high,
    this.planes,
    this.fill,
    this.sum,
  });

  /// Set low threshold. Any pixel component lower or exact than this value will be set to 0.
  Object? low;

  /// Set high threshold. Any pixel component higher than this value will be set to max value allowed for current pixel format.
  Object? high;

  /// Set planes to filter, by default all available planes are filtered.
  Object? planes;

  /// Fill all frame pixels with this value.
  Object? fill;

  /// Set max average pixel value for frame. If sum of all pixel components is higher that this average, output frame will be completely filled with value set by fill option. Typically useful for scene changes when used in combination with `tblend` filter.
  Object? sum;

  @override
  String get name => 'maskfun';

  @override
  Map<String, dynamic> get options =>
      {'low': low, 'high': high, 'planes': planes, 'fill': fill, 'sum': sum};
}
