import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply guided filter for edge-preserving smoothing, dehazing and so on.
///
/// The filter accepts the following options:
class Guided extends Filter {
  /// Guided
  Guided({
    this.radius,
    this.eps,
    this.mode,
    this.sub,
    this.guidance,
    this.planes,
  });

  /// Set the box radius in pixels. Allowed range is 1 to 20. Default is 3.
  Object? radius;

  /// Set regularization parameter (with square). Allowed range is 0 to 1. Default is 0.01.
  Object? eps;

  /// Set filter mode. Can be `basic` or `fast`. Default is `basic`.
  Object? mode;

  /// Set subsampling ratio for `fast` mode. Range is 2 to 64. Default is 4. No subsampling occurs in `basic` mode.
  Object? sub;

  /// Set guidance mode. Can be `off` or `on`. Default is `off`. If `off`, single input is required. If `on`, two inputs of the same resolution and pixel format are required. The second input serves as the guidance.
  Object? guidance;

  /// Set planes to filter. Default is first only.
  Object? planes;

  @override
  String get name => 'guided';

  @override
  Map<String, dynamic> get options => {
        'radius': radius,
        'eps': eps,
        'mode': mode,
        'sub': sub,
        'guidance': guidance,
        'planes': planes,
      };
}
