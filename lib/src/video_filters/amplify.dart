import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Amplify differences between current pixel and pixels of adjacent frames in same pixel location.
///
/// This filter accepts the following options:
class Amplify extends Filter {
  /// Amplify
  Amplify({
    this.radius,
    this.factor,
    this.threshold,
    this.tolerance,
    this.low,
    this.high,
    this.planes,
  });

  /// Set frame radius. Default is 2. Allowed range is from 1 to 63. For example radius of 3 will instruct filter to calculate average of 7 frames.
  Object? radius;

  /// Set factor to amplify difference. Default is 2. Allowed range is from 0 to 65535.
  Object? factor;

  /// Set threshold for difference amplification. Any difference greater or equal to this value will not alter source pixel. Default is 10. Allowed range is from 0 to 65535.
  Object? threshold;

  /// Set tolerance for difference amplification. Any difference lower to this value will not alter source pixel. Default is 0. Allowed range is from 0 to 65535.
  Object? tolerance;

  /// Set lower limit for changing source pixel. Default is 65535. Allowed range is from 0 to 65535. This option controls maximum possible value that will decrease source pixel value.
  Object? low;

  /// Set high limit for changing source pixel. Default is 65535. Allowed range is from 0 to 65535. This option controls maximum possible value that will increase source pixel value.
  Object? high;

  /// Set which planes to filter. Default is all. Allowed range is from 0 to 15.
  Object? planes;

  @override
  String get name => 'amplify';

  @override
  Map<String, dynamic> get options => {
        'radius': radius,
        'factor': factor,
        'threshold': threshold,
        'tolerance': tolerance,
        'low': low,
        'high': high,
        'planes': planes,
      };
}
