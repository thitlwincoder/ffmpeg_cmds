import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flips an image horizontally.
class HflipVulkan extends Filter {
  /// HflipVulkan
  HflipVulkan();

  @override
  String get name => 'hflip_vulkan';

  @override
  Map<String, dynamic> get options => {};
}
