import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Libplacebo comes with a built-in debanding filter that is good at counteracting many common sources of banding and blocking. Turning this on is highly recommended whenever quality is desired.
class Debanding extends Filter {
  /// Debanding
  Debanding({
    this.deband,
    this.debandIterations,
    this.debandThreshold,
    this.debandRadius,
    this.debandGrain,
  });

  /// Enable (fast) debanding algorithm. Disabled by default.
  Object? deband;

  /// Number of deband iterations of the debanding algorithm. Each iteration is performed with progressively increased radius (and diminished threshold). Recommended values are in the range `1` to `4`. Defaults to `1`.
  Object? debandIterations;

  /// Debanding filter strength. Higher numbers lead to more aggressive debanding. Defaults to `4.0`.
  Object? debandThreshold;

  /// Debanding filter radius. A higher radius is better for slow gradients, while a lower radius is better for steep gradients. Defaults to `16.0`.
  Object? debandRadius;

  /// Amount of extra output grain to add. Helps hide imperfections. Defaults to `6.0`.
  Object? debandGrain;

  @override
  String get name => 'Debanding';

  @override
  Map<String, dynamic> get options => {
        'deband': deband,
        'deband_iterations': debandIterations,
        'deband_threshold': debandThreshold,
        'deband_radius': debandRadius,
        'deband_grain': debandGrain,
      };
}
