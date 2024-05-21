import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply audio soft clipping.
///
/// Soft clipping is a type of distortion effect where the amplitude of a signal is saturated along a smooth curve, rather than the abrupt shape of hard-clipping.
///
/// This filter accepts the following options:
class Asoftclip extends Filter {
  /// Asoftclip
  Asoftclip({
    this.type,
    this.threshold,
    this.output,
    this.param,
    this.oversample,
  });

  /// Set type of soft-clipping./// It accepts the following values:
  /// - `hard`
  /// - `tanh`
  /// - `atan`
  /// - `cubic`
  /// - `exp`
  /// - `alg`
  /// - `quintic`
  /// - `sin`
  /// - `erf`
  Object? type;

  /// Set threshold from where to start clipping. Default value is 0dB or 1.
  Object? threshold;

  /// Set gain applied to output. Default value is 0dB or 1.
  Object? output;

  /// Set additional parameter which controls sigmoid function.
  Object? param;

  /// Set oversampling factor.
  Object? oversample;

  @override
  String get name => 'asoftclip';

  @override
  Map<String, dynamic> get options => {
        'type': type,
        'threshold': threshold,
        'output': output,
        'param': param,
        'oversample': oversample,
      };
}
