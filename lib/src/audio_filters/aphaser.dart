import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Add a phasing effect to the input audio.
///
/// A phaser filter creates series of peaks and troughs in the frequency spectrum. The position of the peaks and troughs are modulated so that they vary over time, creating a sweeping effect.
///
/// A description of the accepted parameters follows.
class Aphaser extends Filter {
  /// Aphaser
  Aphaser({
    this.inGain,
    this.outGain,
    this.delay,
    this.decay,
    this.speed,
    this.type,
  });

  /// Set input gain. Default is 0.4.
  Object? inGain;

  /// Set output gain. Default is 0.74
  Object? outGain;

  /// Set delay in milliseconds. Default is 3.0.
  Object? delay;

  /// Set decay. Default is 0.4.
  Object? decay;

  /// Set modulation speed in Hz. Default is 0.5.
  Object? speed;

  /// Set modulation type. Default is triangular./// It accepts the following values:
  /// - `triangular, t`
  /// - `sinusoidal, s`
  Object? type;

  @override
  String get name => 'aphaser';

  @override
  Map<String, dynamic> get options => {
        'in_gain': inGain,
        'out_gain': outGain,
        'delay': delay,
        'decay': decay,
        'speed': speed,
        'type': type,
      };
}
