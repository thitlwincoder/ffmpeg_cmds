import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pick median pixel from certain rectangle defined by radius.
///
/// This filter accepts the following options:
class Median extends Filter {
  /// Median
  Median({
    this.radius,
    this.planes,
    this.radiusV,
    this.percentile,
  });

  /// Set horizontal radius size. Default value is `1`. Allowed range is integer from 1 to 127.
  Object? radius;

  /// Set which planes to process. Default is `15`, which is all available planes.
  Object? planes;

  /// Set vertical radius size. Default value is `0`. Allowed range is integer from 0 to 127. If it is 0, value will be picked from horizontal `radius` option.
  Object? radiusV;

  /// Set median percentile. Default value is `0.5`. Default value of `0.5` will pick always median values, while `0` will pick minimum values, and `1` maximum values.
  Object? percentile;

  @override
  String get name => 'median';

  @override
  Map<String, dynamic> get options => {
        'radius': radius,
        'planes': planes,
        'radiusV': radiusV,
        'percentile': percentile,
      };
}
