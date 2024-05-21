import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Limits the pixel components values to the specified range \[min, max\].
///
/// The filter accepts the following options:
class Limiter extends Filter {
  /// Limiter
  Limiter({
    this.min,
    this.max,
    this.planes,
  });

  /// Lower bound. Defaults to the lowest allowed value for the input.
  Object? min;

  /// Upper bound. Defaults to the highest allowed value for the input.
  Object? max;

  /// Specify which planes will be processed. Defaults to all available.
  Object? planes;

  @override
  String get name => 'limiter';

  @override
  Map<String, dynamic> get options =>
      {'min': min, 'max': max, 'planes': planes};
}
