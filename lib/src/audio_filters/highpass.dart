import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a high-pass filter with 3dB point frequency. The filter can be either single-pole, or double-pole (the default). The filter roll off at 6dB per pole per octave (20dB per pole per decade).
///
/// The filter accepts the following options:
class Highpass extends Filter {
  /// Highpass
  Highpass({
    this.frequency,
    this.f,
    this.poles,
    this.p,
    this.widthType,
    this.t,
    this.width,
    this.w,
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

  Object? frequency, f;

  Object? poles, p;

  Object? widthType, t;

  Object? width, w;

  Object? mix, m;

  Object? channels, c;

  Object? normalize, n;

  Object? transform, a;

  Object? precision, r;

  Object? blockSize, b;

  @override
  String get name => 'highpass';

  @override
  Map<String, dynamic> get options => {
        'frequency': frequency,
        'f': f,
        'poles': poles,
        'p': p,
        'width_type': widthType,
        't': t,
        'width': width,
        'w': w,
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
