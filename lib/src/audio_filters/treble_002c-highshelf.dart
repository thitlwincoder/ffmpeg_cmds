import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Boost or cut treble (upper) frequencies of the audio using a two-pole shelving filter with a response similar to that of a standard hi-fi’s tone-controls. This is also known as shelving equalisation (EQ).
///
/// The filter accepts the following options:
class Treble002cHighshelf extends Filter {
  /// Treble002cHighshelf
  Treble002cHighshelf({
    this.gain,
    this.g,
    this.frequency,
    this.f,
    this.widthType,
    this.t,
    this.width,
    this.w,
    this.poles,
    this.p,
    this.mix,
    this.m,
    this.channels,
    this.c,
    this.normalize,
    this.n,
    this.transform,
    this.a,
    this.precision,
    this.r,
    this.blockSize,
    this.b,
  });

  Object? gain, g;

  Object? frequency, f;

  Object? widthType, t;

  Object? width, w;

  Object? poles, p;

  Object? mix, m;

  Object? channels, c;

  Object? normalize, n;

  Object? transform, a;

  Object? precision, r;

  Object? blockSize, b;

  @override
  String get name => 'treble_002c-highshelf';

  @override
  Map<String, dynamic> get options => {
        'gain': gain,
        'g': g,
        'frequency': frequency,
        'f': f,
        'width_type': widthType,
        't': t,
        'width': width,
        'w': w,
        'poles': poles,
        'p': p,
        'mix': mix,
        'm': m,
        'channels': channels,
        'c': c,
        'normalize': normalize,
        'n': n,
        'transform': transform,
        'a': a,
        'precision': precision,
        'r': r,
        'block_size': blockSize,
        'b': b,
      };
}
