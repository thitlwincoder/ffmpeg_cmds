import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
///
/// The formula that generates the correction is:
class Options extends Filter {
  /// Options
  Options({
    this.cx,
    this.cy,
    this.k1,
    this.k2,
    this.i,
    this.fc,
  });

  /// Relative x-coordinate of the focal point of the image, and thereby the center of the distortion. This value has a range \[0,1\] and is expressed as fractions of the image width. Default is 0.5.
  Object? cx;

  /// Relative y-coordinate of the focal point of the image, and thereby the center of the distortion. This value has a range \[0,1\] and is expressed as fractions of the image height. Default is 0.5.
  Object? cy;

  /// Coefficient of the quadratic correction term. This value has a range \[-1,1\]. 0 means no correction. Default is 0.
  Object? k1;

  /// Coefficient of the double quadratic correction term. This value has a range \[-1,1\]. 0 means no correction. Default is 0.
  Object? k2;

  /// Set interpolation type. Can be `nearest` or `bilinear`. Default is `nearest`.
  Object? i;

  /// Specify the color of the unmapped pixels. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). Default color is `black@0`.
  Object? fc;

  @override
  String get name => 'Options';

  @override
  Map<String, dynamic> get options =>
      {'cx': cx, 'cy': cy, 'k1': k1, 'k2': k2, 'i': i, 'fc': fc};
}
