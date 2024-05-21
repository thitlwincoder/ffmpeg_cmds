import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Turn certain luma values into transparency.
///
/// The filter accepts the following options:
class Lumakey extends Filter {
  /// Lumakey
  Lumakey({
    this.threshold,
    this.tolerance,
    this.softness,
  });

  /// Set the luma which will be used as base for transparency. Default value is `0`.
  Object? threshold;

  /// Set the range of luma values to be keyed out. Default value is `0.01`.
  Object? tolerance;

  /// Set the range of softness. Default value is `0`. Use this to control gradual transition from zero to full transparency.
  Object? softness;

  @override
  String get name => 'lumakey';

  @override
  Map<String, dynamic> get options =>
      {'threshold': threshold, 'tolerance': tolerance, 'softness': softness};
}
