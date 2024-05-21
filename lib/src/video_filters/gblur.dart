import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Gaussian blur filter.
///
/// The filter accepts the following options:
class Gblur extends Filter {
  /// Gblur
  Gblur({
    this.sigma,
    this.steps,
    this.planes,
    this.sigmaV,
  });

  /// Set horizontal sigma, standard deviation of Gaussian blur. Default is `0.5`.
  Object? sigma;

  /// Set number of steps for Gaussian approximation. Default is `1`.
  Object? steps;

  /// Set which planes to filter. By default all planes are filtered.
  Object? planes;

  /// Set vertical sigma, if negative it will be same as `sigma`. Default is `-1`.
  Object? sigmaV;

  @override
  String get name => 'gblur';

  @override
  Map<String, dynamic> get options =>
      {'sigma': sigma, 'steps': steps, 'planes': planes, 'sigmaV': sigmaV};
}
