import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply an average blur filter, implemented on the GPU using Vulkan.
///
/// The filter accepts the following options:
class AvgblurVulkan extends Filter {
  /// AvgblurVulkan
  AvgblurVulkan({
    this.sizeX,
    this.sizeY,
    this.planes,
  });

  /// Set horizontal radius size. Range is `\[1, 32\]` and default value is `3`.
  Object? sizeX;

  /// Set vertical radius size. Range is `\[1, 32\]` and default value is `3`.
  Object? sizeY;

  /// Set which planes to filter. Default value is `0xf`, by which all planes are processed.
  Object? planes;

  @override
  String get name => 'avgblur_vulkan';

  @override
  Map<String, dynamic> get options =>
      {'sizeX': sizeX, 'sizeY': sizeY, 'planes': planes};
}
