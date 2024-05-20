import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove blocking artifacts from input video.
class Deblock extends Filter {
  /// Deblock
  Deblock({
    this.filter,
    this.block,
    this.alpha,
    this.beta,
    this.gamma,
    this.delta,
    this.planes,
  });

  /// Set filter type, can be weak or strong. Default is `strong`. This controls what kind of deblocking is applied.
  String? filter;

  /// Set size of block, allowed range is from `4` to `512`. Default is `8`.
  int? block;

  /// Set blocking detection thresholds. Allowed range is `0` to `1`. Defaults are: `0.098` for alpha and `0.05` for the rest. Using higher threshold gives more deblocking strength. Setting alpha controls threshold detection at exact edge of block. Remaining options controls threshold detection near the edge. Each one for below/above or left/right. Setting any of those to 0 disables deblocking.
  double? alpha, beta, gamma, delta;

  /// Set planes to filter. Default is to filter all available planes.
  String? planes;

  @override
  String get name => 'deblock';

  @override
  Map<String, dynamic> get options => {
        'filter': filter,
        'block': block,
        'alpha': alpha,
        'beta': beta,
        'gamma': gamma,
        'delta': delta,
        'planes': planes,
      };
}
