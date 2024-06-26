import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Compress or expand the audio’s dynamic range.
///
/// It accepts the following parameters:
class Compand extends Filter {
  /// Compand
  Compand({
    this.attacks,
    this.decays,
    this.points,
    this.softKnee,
    this.gain,
    this.volume,
    this.delay,
  });

  /// A list of times in seconds for each channel over which the instantaneous level of the input signal is averaged to determine its volume. attacks refers to increase of volume and decays refers to decrease of volume. For most situations, the attack time (response to the audio getting louder) should be shorter than the decay time, because the human ear is more sensitive to sudden loud audio than sudden soft audio. A typical value for attack is 0.3 seconds and a typical value for decay is 0.8 seconds. If specified number of attacks & decays is lower than number of channels, the last set attack/decay will be used for all remaining channels.
  Object? attacks;

  /// A list of points for the transfer function, specified in dB relative to the maximum possible signal amplitude. Each key points list must be defined using the following syntax: `x0/y0|x1/y1|x2/y2|....` or `x0/y0 x1/y1 x2/y2 ....`/// The input values must be in strictly increasing order but the transfer function does not have to be monotonically rising. The point `0/0` is assumed but may be overridden (by `0/out-dBn`). Typical values for the transfer function are `-70/-70|-60/-20|1/0`.
  Object? decays;

  /// Set the curve radius in dB for all joints. It defaults to 0.01.
  Object? points;

  Object? softKnee;

  /// Set an initial volume, in dB, to be assumed for each channel when filtering starts. This permits the user to supply a nominal level initially, so that, for example, a very large gain is not applied to initial signal levels before the companding has begun to operate. A typical value for audio which is initially quiet is -90 dB. It defaults to 0.
  Object? gain;

  /// Set a delay, in seconds. The input audio is analyzed immediately, but audio is delayed before being fed to the volume adjuster. Specifying a delay approximately equal to the attack/decay times allows the filter to effectively operate in predictive rather than reactive mode. It defaults to 0.
  Object? volume;

  Object? delay;

  @override
  String get name => 'compand';

  @override
  Map<String, dynamic> get options => {
        'attacks': attacks,
        'decays': decays,
        'points': points,
        'soft-knee': softKnee,
        'gain': gain,
        'volume': volume,
        'delay': delay,
      };
}
