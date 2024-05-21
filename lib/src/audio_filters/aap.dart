import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Affine Projection algorithm to the first audio stream using the second audio stream.
///
/// This adaptive filter is used to estimate unknown audio based on multiple input audio samples. Affine projection algorithm can make trade-offs between computation complexity with convergence speed.
///
/// A description of the accepted options follows.
class Aap extends Filter {
  /// Aap
  Aap({
    this.order,
    this.projection,
    this.mu,
    this.delta,
    this.outMode,
    this.precision,
  });

  /// Set the filter order.
  Object? order;

  /// Set the projection order.
  Object? projection;

  /// Set the filter mu.
  Object? mu;

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
  String get name => 'aap';

  @override
  Map<String, dynamic> get options => {
        'order': order,
        'projection': projection,
        'mu': mu,
        'delta': delta,
        'out_mode': outMode,
        'precision': precision,
      };
}
