import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a two-pole peaking equalisation (EQ) filter. With this filter, the signal-level at and around a selected frequency can be increased or decreased, whilst (unlike bandpass and bandreject filters) that at all other frequencies is unchanged.
///
/// In order to produce complex equalisation curves, this filter can be given several times, each with a different central frequency.
///
/// The filter accepts the following options:
class Equalizer extends Filter {
  /// Equalizer
  Equalizer({
    this.frequency,
    this.f,
    this.widthType,
    this.t,
    this.width,
    this.w,
    this.gain,
    this.g,
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

  Object? widthType, t;

  Object? width, w;

  Object? gain, g;

  Object? mix, m;

  Object? channels, c;

  Object? normalize, n;

  Object? transform, a;

  Object? precision, r;

  Object? blockSize, b;

  @override
  String get name => 'equalizer';

  @override
  Map<String, dynamic> get options => {
        'frequency': frequency,
        'f': f,
        'width_type': widthType,
        't': t,
        'width': width,
        'w': w,
        'gain': gain,
        'g': g,
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
