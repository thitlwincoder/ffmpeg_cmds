import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flips an image along both the vertical and horizontal axis.
class FlipVulkan extends Filter {
  /// FlipVulkan
  FlipVulkan();

  @override
  String get name => 'flip_vulkan';

  @override
  Map<String, dynamic> get options => {};
}
