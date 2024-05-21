import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply bilateral filter, spatial smoothing while preserving edges.
///
/// The filter accepts the following options:
class Bilateral extends Filter {
  /// Bilateral
  Bilateral({
    this.sigmaS,
    this.sigmaR,
    this.planes,
  });

  /// Set sigma of gaussian function to calculate spatial weight. Allowed range is 0 to 512. Default is 0.1.
  Object? sigmaS;

  /// Set sigma of gaussian function to calculate range weight. Allowed range is 0 to 1. Default is 0.1.
  Object? sigmaR;

  /// Set planes to filter. Default is first only.
  Object? planes;

  @override
  String get name => 'bilateral';

  @override
  Map<String, dynamic> get options =>
      {'sigmaS': sigmaS, 'sigmaR': sigmaR, 'planes': planes};
}
