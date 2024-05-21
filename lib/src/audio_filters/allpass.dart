import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Allpass extends Filter {
  /// Allpass
  Allpass({
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
    this.order,
    this.o,
    this.transform,
    this.a,
    this.precision,
    this.r,
  });

  Object? frequency, f;

  Object? widthType, t;

  Object? width, w;

  Object? mix, m;

  Object? channels, c;

  Object? normalize, n;

  Object? order, o;

  Object? transform, a;

  Object? precision, r;

  @override
  String get name => 'allpass';

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
        'order': order,
        'o': o,
        'transform': transform,
        'a': a,
        'precision': precision,
        'r': r,
      };
}
