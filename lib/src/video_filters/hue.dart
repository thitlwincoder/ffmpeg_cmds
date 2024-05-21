import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Modify the hue and/or the saturation of the input.
///
/// It accepts the following parameters:
class Hue extends Filter {
  /// Hue
  Hue({
    this.h,
    this.s,
    this.H,
    this.b,
    this.n,
    this.pts,
    this.r,
    this.t,
    this.tb,
  });

  /// Specify the hue angle as a number of degrees. It accepts an expression, and defaults to "0".
  Object? h;

  /// Specify the saturation in the \[-10,10\] range. It accepts an expression and defaults to "1".
  Object? s;

  /// Specify the hue angle as a number of degrees. It accepts an expression, and defaults to "0".
  Object? H;

  /// Specify the brightness in the \[-10,10\] range. It accepts an expression and defaults to "0".
  Object? b;

  /// frame count of the input frame starting from 0
  Object? n;

  /// presentation timestamp of the input frame expressed in time base units
  Object? pts;

  /// frame rate of the input video, NAN if the input frame rate is unknown
  Object? r;

  /// timestamp expressed in seconds, NAN if the input timestamp is unknown
  Object? t;

  /// time base of the input video
  Object? tb;

  @override
  String get name => 'hue';

  @override
  Map<String, dynamic> get options => {
        'h': h,
        's': s,
        'H': H,
        'b': b,
        'n': n,
        'pts': pts,
        'r': r,
        't': t,
        'tb': tb,
      };
}
