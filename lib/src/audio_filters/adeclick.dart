import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove impulsive noise from input audio.
///
/// Samples detected as impulsive noise are replaced by interpolated samples using autoregressive modelling.
class Adeclick extends Filter {
  /// Adeclick
  Adeclick({
    this.window,
    W,
    this.overlap,
    O,
    this.arorder,
    A,
    this.threshold,
    T,
    this.burst,
    B,
    this.method,
    M,
  });

  /// Set window size, in milliseconds. Allowed range is from 10 to 100. Default value is 55 milliseconds. This sets size of window which will be processed at once.
  Object? window, W;

  /// Set window overlap, in percentage of window size. Allowed range is from 50 to 95. Default value is 75 percent. Setting this to a very high value increases impulsive noise removal but makes whole process much slower.
  Object? overlap, O;

  /// Set autoregression order, in percentage of window size. Allowed range is from 0 to 25. Default value is 2 percent. This option also controls quality of interpolated samples using neighbour good samples.
  Object? arorder, A;

  /// Set threshold value. Allowed range is from 1 to 100. Default value is 2. This controls the strength of impulsive noise which is going to be removed. The lower value, the more samples will be detected as impulsive noise.
  Object? threshold, T;

  /// Set burst fusion, in percentage of window size. Allowed range is 0 to 10. Default value is 2. If any two samples detected as noise are spaced less than this value then any sample between those two samples will be also detected as noise.
  Object? burst, B;

  /// Set overlap method.
  Object? method, M;

  @override
  String get name => 'adeclick';

  @override
  Map<String, dynamic> get options => {
        'window, w': window,
        W,
        'overlap, o': overlap,
        O,
        'arorder, a': arorder,
        A,
        'threshold, t': threshold,
        T,
        'burst, b': burst,
        B,
        'method, m': method,
        M
      };
}
