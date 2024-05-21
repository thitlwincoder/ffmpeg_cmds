import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a fractional delay FIR coefficients.
///
/// The filter accepts the following options:
class Afdelaysrc extends Filter {
  /// Afdelaysrc
  Afdelaysrc({
    this.delay,
    this.d,
    this.sampleRate,
    this.r,
    this.nbSamples,
    this.n,
    this.taps,
    this.t,
    this.channelLayout,
    this.c,
  });

  Object? delay, d;

  Object? sampleRate, r;

  Object? nbSamples, n;

  Object? taps, t;

  Object? channelLayout, c;

  @override
  String get name => 'afdelaysrc';

  @override
  Map<String, dynamic> get options => {
        'delay': delay,
        'd': d,
        'sample_rate': sampleRate,
        'r': r,
        'nb_samples': nbSamples,
        'n': n,
        'taps': taps,
        't': t,
        'channel_layout': channelLayout,
        'c': c,
      };
}
