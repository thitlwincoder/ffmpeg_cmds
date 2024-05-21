import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Normalized Least-Mean-(Squares|Fourth) algorithm to the first audio stream using the second audio stream.
///
/// This adaptive filter is used to mimic a desired filter by finding the filter coefficients that relate to producing the least mean square of the error signal (difference between the desired, 2nd input audio stream and the actual signal, the 1st input audio stream).
///
/// A description of the accepted options follows.
class Anlmf002cAnlms extends Filter {
  /// Anlmf002cAnlms
  Anlmf002cAnlms({
    this.order,
    this.mu,
    this.eps,
    this.leakage,
    this.outMode,
    this.precision,
  });

  /// Set filter order.
  Object? order;

  /// Set filter mu.
  Object? mu;

  /// Set the filter eps.
  Object? eps;

  /// Set the filter leakage.
  Object? leakage;

  /// It accepts the following values:
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
  String get name => 'anlmf_002c-anlms';

  @override
  Map<String, dynamic> get options => {
        'order': order,
        'mu': mu,
        'eps': eps,
        'leakage': leakage,
        'out_mode': outMode,
        'precision': precision,
      };
}
