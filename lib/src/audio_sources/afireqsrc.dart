import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a FIR equalizer coefficients.
///
/// The filter accepts the following options:
class Afireqsrc extends Filter {
  /// Afireqsrc
  Afireqsrc({
    this.preset,
    this.p,
    this.gains,
    this.g,
    this.bands,
    this.b,
    this.taps,
    this.t,
    this.sampleRate,
    this.r,
    this.nbSamples,
    this.n,
    this.interp,
    this.i,
    this.phase,
    this.h,
  });

  Object? preset, p;

  Object? gains, g;

  Object? bands, b;

  Object? taps, t;

  Object? sampleRate, r;

  Object? nbSamples, n;

  Object? interp, i;

  Object? phase, h;

  @override
  String get name => 'afireqsrc';

  @override
  Map<String, dynamic> get options => {
        'preset': preset,
        'p': p,
        'gains': gains,
        'g': g,
        'bands': bands,
        'b': b,
        'taps': taps,
        't': t,
        'sample_rate': sampleRate,
        'r': r,
        'nb_samples': nbSamples,
        'n': n,
        'interp': interp,
        'i': i,
        'phase': phase,
        'h': h,
      };
}
