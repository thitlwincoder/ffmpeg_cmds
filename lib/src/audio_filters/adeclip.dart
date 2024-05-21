import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove clipped samples from input audio.
///
/// Samples detected as clipped are replaced by interpolated samples using autoregressive modelling.
class Adeclip extends Filter {
  /// Adeclip
  Adeclip({
    this.window,
    this.w,
    this.overlap,
    this.o,
    this.arorder,
    this.a,
    this.threshold,
    this.t,
    this.hsize,
    this.n,
    this.method,
    this.m,
  });

  Object? window, w;

  Object? overlap, o;

  Object? arorder, a;

  Object? threshold, t;

  Object? hsize, n;

  Object? method, m;

  @override
  String get name => 'adeclip';

  @override
  Map<String, dynamic> get options => {
        'window': window,
        'w': w,
        'overlap': overlap,
        'o': o,
        'arorder': arorder,
        'a': a,
        'threshold': threshold,
        't': t,
        'hsize': hsize,
        'n': n,
        'method': method,
        'm': m,
      };
}
