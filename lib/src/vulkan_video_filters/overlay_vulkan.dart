import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Overlay one video on top of another.
///
/// It takes two inputs and has one output. The first input is the "main" video on which the second input is overlaid. This filter requires all inputs to use the same pixel format. So, format conversion may be needed.
///
/// The filter accepts the following options:
class OverlayVulkan extends Filter {
  /// OverlayVulkan
  OverlayVulkan({
    this.x,
    this.y,
  });

  /// Set the x coordinate of the overlaid video on the main video. Default value is `0`.
  Object? x;

  /// Set the y coordinate of the overlaid video on the main video. Default value is `0`.
  Object? y;

  @override
  String get name => 'overlay_vulkan';

  @override
  Map<String, dynamic> get options => {'x': x, 'y': y};
}
