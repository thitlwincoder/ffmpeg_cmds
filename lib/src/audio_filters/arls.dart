import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Recursive Least Squares algorithm to the first audio stream using the second audio stream.
///
/// This adaptive filter is used to mimic a desired filter by recursively finding the filter coefficients that relate to producing the minimal weighted linear least squares cost function of the error signal (difference between the desired, 2nd input audio stream and the actual signal, the 1st input audio stream).
///
/// A description of the accepted options follows.
class Arls extends Filter {
  /// Arls
  Arls({
    this.order,
    this.lambda,
    this.delta,
    this.outMode,
    this.precision,
  });

  /// Set the filter order.
  Object? order;

  /// Set the forgetting factor.
  Object? lambda;

  /// Set the coefficient to initialize internal covariance matrix.
  Object? delta;

  /// Set the filter output samples. It accepts the following values:
  /// - `i` Pass the 1st input.
  /// - `d` Pass the 2nd input.
  /// - `o` Pass difference between desired, 2nd input and error signal estimate.
  /// - `n` Pass difference between input, 1st input and error signal estimate.
  /// - `e` Pass error signal estimated samples.Default value is o.
  Object? outMode;

  /// Set which precision to use when processing samples.
  /// - `auto` Auto pick internal sample format depending on other filters.
  /// - `float` Always use single-floating point precision sample format.
  /// - `double` Always use double-floating point precision sample format.
  Object? precision;

  @override
  String get name => 'arls';

  @override
  Map<String, dynamic> get options => {
        'order': order,
        'lambda': lambda,
        'delta': delta,
        'out_mode': outMode,
        'precision': precision,
      };
}
