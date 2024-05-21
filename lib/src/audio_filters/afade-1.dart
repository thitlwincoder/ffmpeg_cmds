import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply fade-in/out effect to input audio.
///
/// A description of the accepted parameters follows.
class Afade1 extends Filter {
  /// Afade1
  Afade1({
    this.type,
    this.t,
    this.startSample,
    this.ss,
    this.nbSamples,
    this.ns,
    this.startTime,
    this.st,
    this.duration,
    this.d,
    this.curve,
    this.silence,
    this.unity,
  });

  Object? type, t;

  Object? startSample, ss;

  Object? nbSamples, ns;

  Object? startTime, st;

  Object? duration, d;

  /// Set curve for fade transition./// It accepts the following values:
  /// - `tri` select triangular, linear slope (default)
  /// - `qsin` select quarter of sine wave
  /// - `hsin` select half of sine wave
  /// - `esin` select exponential sine wave
  /// - `log` select logarithmic
  /// - `ipar` select inverted parabola
  /// - `qua` select quadratic
  /// - `cub` select cubic
  /// - `squ` select square root
  /// - `cbr` select cubic root
  /// - `par` select parabola
  /// - `exp` select exponential
  /// - `iqsin` select inverted quarter of sine wave
  /// - `ihsin` select inverted half of sine wave
  /// - `dese` select double-exponential seat
  /// - `desi` select double-exponential sigmoid
  /// - `losi` select logistic sigmoid
  /// - `sinc` select sine cardinal function
  /// - `isinc` select inverted sine cardinal function
  /// - `quat` select quartic
  /// - `quatr` select quartic root
  /// - `qsin2` select squared quarter of sine wave
  /// - `hsin2` select squared half of sine wave
  /// - `nofade` no fade applied
  Object? curve;

  /// Set the initial gain for fade-in or final gain for fade-out. Default value is `0.0`.
  Object? silence;

  /// Set the initial gain for fade-out or final gain for fade-in. Default value is `1.0`.
  Object? unity;

  @override
  String get name => 'afade-1';

  @override
  Map<String, dynamic> get options => {
        'type': type,
        't': t,
        'start_sample': startSample,
        'ss': ss,
        'nb_samples': nbSamples,
        'ns': ns,
        'start_time': startTime,
        'st': st,
        'duration': duration,
        'd': d,
        'curve': curve,
        'silence': silence,
        'unity': unity,
      };
}
