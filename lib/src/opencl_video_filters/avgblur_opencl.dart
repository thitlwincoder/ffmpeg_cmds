import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply average blur filter.
///
/// The filter accepts the following options:
class AvgblurOpencl extends Filter {
  /// AvgblurOpencl
  AvgblurOpencl({
    this.sizeX,
    this.planes,
    this.sizeY,
  });

  /// Set horizontal radius size. Range is `\[1, 1024\]` and default value is `1`.
  Object? sizeX;

  /// Set which planes to filter. Default value is `0xf`, by which all planes are processed.
  Object? planes;

  /// Set vertical radius size. Range is `\[1, 1024\]` and default value is `0`. If zero, `sizeX` value will be used.
  Object? sizeY;

  @override
  String get name => 'avgblur_opencl';

  @override
  Map<String, dynamic> get options =>
      {'sizeX': sizeX, 'planes': planes, 'sizeY': sizeY};
}
