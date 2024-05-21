import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flips an image vertically.
class VflipVulkan extends Filter {
  /// VflipVulkan
  VflipVulkan();

  @override
  String get name => 'vflip_vulkan';

  @override
  Map<String, dynamic> get options => {};
}
