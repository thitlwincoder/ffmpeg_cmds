import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Add a chorus effect to the audio.
///
/// Can make a single vocal sound like a chorus, but can also be applied to instrumentation.
///
/// Chorus resembles an echo effect with a short delay, but whereas with echo the delay is constant, with chorus, it is varied using using sinusoidal or triangular modulation. The modulation depth defines the range the modulated delay is played before or after the delay. Hence the delayed sound will sound slower or faster, that is the delayed sound tuned around the original one, like in a chorus where some vocals are slightly off key.
///
/// It accepts the following parameters:
class Chorus extends Filter {
  /// Chorus
  Chorus({
    this.inGain,
    this.outGain,
    this.delays,
    this.decays,
    this.speeds,
    this.depths,
  });

  /// Set input gain. Default is 0.4.
  Object? inGain;

  /// Set output gain. Default is 0.4.
  Object? outGain;

  /// Set delays. A typical delay is around 40ms to 60ms.
  Object? delays;

  /// Set decays.
  Object? decays;

  /// Set speeds.
  Object? speeds;

  /// Set depths.
  Object? depths;

  @override
  String get name => 'chorus';

  @override
  Map<String, dynamic> get options => {
        'in_gain': inGain,
        'out_gain': outGain,
        'delays': delays,
        'decays': decays,
        'speeds': speeds,
        'depths': depths,
      };
}
