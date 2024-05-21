import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pick median pixels from several successive input video frames.
///
/// The filter accepts the following options:
class Tmedian extends Filter {
  /// Tmedian
  Tmedian({
    this.radius,
    this.planes,
    this.percentile,
  });

  /// Set radius of median filter. Default is 1. Allowed range is from 1 to 127.
  Object? radius;

  /// Set which planes to filter. Default value is `15`, by which all planes are processed.
  Object? planes;

  /// Set median percentile. Default value is `0.5`. Default value of `0.5` will pick always median values, while `0` will pick minimum values, and `1` maximum values.
  Object? percentile;

  @override
  String get name => 'tmedian';

  @override
  Map<String, dynamic> get options =>
      {'radius': radius, 'planes': planes, 'percentile': percentile};
}
