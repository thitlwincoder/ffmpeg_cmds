import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate odd-tap Hilbert transform FIR coefficients.
///
/// This is used in many matrix coding schemes and for analytic signal generation. The process is often written as a multiplication by i (or j), the imaginary unit.
///
/// The filter accepts the following options:
class Hilbert extends Filter {
  /// Hilbert
  Hilbert({
    this.sampleRate,
    this.s,
    this.taps,
    this.t,
    this.nbSamples,
    this.n,
    this.winFunc,
    this.w,
  });

  Object? sampleRate, s;

  Object? taps, t;

  Object? nbSamples, n;

  Object? winFunc, w;

  @override
  String get name => 'hilbert';

  @override
  Map<String, dynamic> get options => {
        'sample_rate': sampleRate,
        's': s,
        'taps': taps,
        't': t,
        'nb_samples': nbSamples,
        'n': n,
        'win_func': winFunc,
        'w': w,
      };
}
