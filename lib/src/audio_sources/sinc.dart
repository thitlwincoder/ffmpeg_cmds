import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a sinc kaiser-windowed low-pass, high-pass, band-pass, or band-reject FIR coefficients.
///
/// The filter accepts the following options:
class Sinc extends Filter {
  /// Sinc
  Sinc({
    this.sampleRate,
    this.r,
    this.nbSamples,
    this.n,
    this.hp,
    this.lp,
    this.phase,
    this.beta,
    this.att,
    this.round,
    this.hptaps,
    this.lptaps,
  });

  Object? sampleRate, r;

  Object? nbSamples, n;

  /// Set high-pass frequency. Default is 0.
  Object? hp;

  /// Set low-pass frequency. Default is 0. If high-pass frequency is lower than low-pass frequency and low-pass frequency is higher than 0 then filter will create band-pass filter coefficients, otherwise band-reject filter coefficients.
  Object? lp;

  /// Set filter phase response. Default is 50. Allowed range is from 0 to 100.
  Object? phase;

  /// Set Kaiser window beta.
  Object? beta;

  /// Set stop-band attenuation. Default is 120dB, allowed range is from 40 to 180 dB.
  Object? att;

  /// Enable rounding, by default is disabled.
  Object? round;

  /// Set number of taps for high-pass filter.
  Object? hptaps;

  /// Set number of taps for low-pass filter.
  Object? lptaps;

  @override
  String get name => 'sinc';

  @override
  Map<String, dynamic> get options => {
        'sample_rate': sampleRate,
        'r': r,
        'nb_samples': nbSamples,
        'n': n,
        'hp': hp,
        'lp': lp,
        'phase': phase,
        'beta': beta,
        'att': att,
        'round': round,
        'hptaps': hptaps,
        'lptaps': lptaps,
      };
}
