import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove impulsive noise from input audio.
///
/// Samples detected as impulsive noise are replaced by interpolated samples using autoregressive modelling.
class Adeclick extends Filter {
  /// Adeclick
  Adeclick({
    this.window,
    this.w,
    this.overlap,
    this.o,
    this.arorder,
    this.a,
    this.threshold,
    this.t,
    this.burst,
    this.b,
    this.method,
    this.m,
  });

  Object? window, w;

  Object? overlap, o;

  Object? arorder, a;

  Object? threshold, t;

  Object? burst, b;

  Object? method, m;

  @override
  String get name => 'adeclick';

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
        'burst': burst,
        'b': b,
        'method': method,
        'm': m,
      };
}
