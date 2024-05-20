import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Affine Projection algorithm to the first audio stream using the second audio stream.
///
/// This adaptive filter is used to estimate unknown audio based on multiple input audio samples. Affine projection algorithm can make trade-offs between computation complexity with convergence speed.
class Aap extends Filter {
  /// Aap
  Aap({
    this.order,
    this.projection,
    this.mu,
    this.delta,
    this.outMode,
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
  String? outMode;

  @override
  String get name => 'aap';

  @override
  Map<String, dynamic> get options => {
        'order': order,
        'projection': projection,
        'mu': mu,
        'delta': delta,
        'out_mode': outMode,
      };
}
