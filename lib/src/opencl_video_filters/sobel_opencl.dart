import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following option:
class SobelOpencl extends Filter {
  /// SobelOpencl
  SobelOpencl({
    this.planes,
    this.scale,
    this.delta,
  });

  /// Set which planes to filter. Default value is `0xf`, by which all planes are processed.
  Object? planes;

  /// Set value which will be multiplied with filtered result. Range is `\[0.0, 65535\]` and default value is `1.0`.
  Object? scale;

  /// Set value which will be added to filtered result. Range is `\[-65535, 65535\]` and default value is `0.0`.
  Object? delta;

  @override
  String get name => 'sobel_opencl';

  @override
  Map<String, dynamic> get options =>
      {'planes': planes, 'scale': scale, 'delta': delta};
}
