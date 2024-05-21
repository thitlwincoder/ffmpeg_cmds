import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A color constancy variation filter which estimates scene illumination via grey edge algorithm and corrects the scene colors accordingly.
///
/// The filter accepts the following options:
class Greyedge extends Filter {
  /// Greyedge
  Greyedge({
    this.difford,
    this.minknorm,
    this.sigma,
  });

  /// The order of differentiation to be applied on the scene. Must be chosen in the range \[0,2\] and default value is 1.
  Object? difford;

  /// The Minkowski parameter to be used for calculating the Minkowski distance. Must be chosen in the range \[0,20\] and default value is 1. Set to 0 for getting max value instead of calculating Minkowski distance.
  Object? minknorm;

  /// The standard deviation of Gaussian blur to be applied on the scene. Must be chosen in the range \[0,1024.0\] and default value = 1. floor( sigma \* break\_off\_sigma(3) ) can’t be equal to 0 if difford is greater than 0.
  Object? sigma;

  @override
  String get name => 'greyedge';

  @override
  Map<String, dynamic> get options =>
      {'difford': difford, 'minknorm': minknorm, 'sigma': sigma};
}
