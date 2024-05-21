import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Bandreject extends Filter {
  /// Bandreject
  Bandreject({
    this.frequency,
    this.f,
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

  Object? widthType, t;

  Object? width, w;

  Object? mix, m;

  Object? channels, c;

  Object? normalize, n;

  Object? transform, a;

  Object? precision, r;

  Object? blockSize, b;

  @override
  String get name => 'bandreject';

  @override
  Map<String, dynamic> get options => {
        'frequency': frequency,
        'f': f,
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
