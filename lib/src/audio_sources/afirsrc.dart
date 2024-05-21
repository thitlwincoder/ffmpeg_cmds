import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a FIR coefficients using frequency sampling method.
///
/// The filter accepts the following options:
class Afirsrc extends Filter {
  /// Afirsrc
  Afirsrc({
    this.taps,
    this.t,
    this.frequency,
    this.f,
    this.magnitude,
    this.m,
    this.phase,
    this.p,
    this.sampleRate,
    this.r,
    this.nbSamples,
    this.n,
    this.winFunc,
    this.w,
  });

  Object? taps, t;

  Object? frequency, f;

  Object? magnitude, m;

  Object? phase, p;

  Object? sampleRate, r;

  Object? nbSamples, n;

  Object? winFunc, w;

  @override
  String get name => 'afirsrc';

  @override
  Map<String, dynamic> get options => {
        'taps': taps,
        't': t,
        'frequency': frequency,
        'f': f,
        'magnitude': magnitude,
        'm': m,
        'phase': phase,
        'p': p,
        'sample_rate': sampleRate,
        'r': r,
        'nb_samples': nbSamples,
        'n': n,
        'win_func': winFunc,
        'w': w,
      };
}
