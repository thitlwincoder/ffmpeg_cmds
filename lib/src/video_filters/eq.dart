import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set brightness, contrast, saturation and approximate gamma adjustment.
///
/// The filter accepts the following options:
///
/// The expressions accept the following parameters:
class Eq extends Filter {
  /// Eq
  Eq({
    this.contrast,
    this.brightness,
    this.saturation,
    this.gamma,
    this.gammaR,
    this.gammaG,
    this.gammaB,
    this.gammaWeight,
    this.eval,
    this.n,
    this.pos,
    this.r,
    this.t,
  });

  /// Set the contrast expression. The value must be a float value in range `-1000.0` to `1000.0`. The default value is "1".
  Object? contrast;

  /// Set the brightness expression. The value must be a float value in range `-1.0` to `1.0`. The default value is "0".
  Object? brightness;

  /// Set the saturation expression. The value must be a float in range `0.0` to `3.0`. The default value is "1".
  Object? saturation;

  /// Set the gamma expression. The value must be a float in range `0.1` to `10.0`. The default value is "1".
  Object? gamma;

  /// Set the gamma expression for red. The value must be a float in range `0.1` to `10.0`. The default value is "1".
  Object? gammaR;

  /// Set the gamma expression for green. The value must be a float in range `0.1` to `10.0`. The default value is "1".
  Object? gammaG;

  /// Set the gamma expression for blue. The value must be a float in range `0.1` to `10.0`. The default value is "1".
  Object? gammaB;

  /// Set the gamma weight expression. It can be used to reduce the effect of a high gamma value on bright image areas, e.g. keep them from getting overamplified and just plain white. The value must be a float in range `0.0` to `1.0`. A value of `0.0` turns the gamma correction all the way down while `1.0` leaves it at its full strength. Default is "1".
  Object? gammaWeight;

  /// Set when the expressions for brightness, contrast, saturation and gamma expressions are evaluated./// It accepts the following values:
  /// - `init` only evaluate expressions once during the filter initialization or when a command is processed
  /// - `frame` evaluate expressions for each incoming frame

  /// Default value is ‘/// init’.
  Object? eval;

  /// frame count of the input frame starting from 0
  Object? n;

  /// byte position of the corresponding packet in the input file, NAN if unspecified; deprecated, do not use
  Object? pos;

  /// frame rate of the input video, NAN if the input frame rate is unknown
  Object? r;

  /// timestamp expressed in seconds, NAN if the input timestamp is unknown
  Object? t;

  @override
  String get name => 'eq';

  @override
  Map<String, dynamic> get options => {
        'contrast': contrast,
        'brightness': brightness,
        'saturation': saturation,
        'gamma': gamma,
        'gamma_r': gammaR,
        'gamma_g': gammaG,
        'gamma_b': gammaB,
        'gamma_weight': gammaWeight,
        'eval': eval,
        'n': n,
        'pos': pos,
        'r': r,
        't': t,
      };
}
