import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// All of the options in this section default off. They may be of assistance when attempting to squeeze the maximum performance at the cost of quality.
class Debugging002fPerformance extends Filter {
  /// Debugging002fPerformance
  Debugging002fPerformance({
    this.skipAa,
    this.polarCutoff,
    this.disableLinear,
    this.disableBuiltin,
    this.disableFbos,
  });

  /// Disable anti-aliasing when downscaling.
  Object? skipAa;

  /// Truncate polar (EWA) scaler kernels below this absolute magnitude, between `0.0` and `1.0`.
  Object? polarCutoff;

  /// Disable linear light scaling.
  Object? disableLinear;

  /// Disable built-in GPU sampling (forces LUT).
  Object? disableBuiltin;

  /// Forcibly disable FBOs, resulting in loss of almost all functionality, but offering the maximum possible speed.
  Object? disableFbos;

  @override
  String get name => 'Debugging-_002f-performance';

  @override
  Map<String, dynamic> get options => {
        'skip_aa': skipAa,
        'polar_cutoff': polarCutoff,
        'disable_linear': disableLinear,
        'disable_builtin': disableBuiltin,
        'disable_fbos': disableFbos,
      };
}
