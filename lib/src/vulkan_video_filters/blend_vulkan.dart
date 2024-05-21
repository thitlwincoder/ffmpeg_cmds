import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Blend two Vulkan frames into each other.
///
/// A description of the accepted options follows.
class BlendVulkan extends Filter {
  /// BlendVulkan
  BlendVulkan({
    this.c0Mode,
    this.c1Mode,
    this.c2Mode,
    this.c3Mode,
    this.allMode,
  });

  /// Set blend mode for specific pixel component or all pixel components in case of all_mode. Default value is `normal`./// Available values for component modes are:
  /// - `normal`
  /// - `multiply`
  Object? c0Mode;

  Object? c1Mode;

  Object? c2Mode;

  Object? c3Mode;

  Object? allMode;

  @override
  String get name => 'blend_vulkan';

  @override
  Map<String, dynamic> get options => {
        'c0_mode': c0Mode,
        'c1_mode': c1Mode,
        'c2_mode': c2Mode,
        'c3_mode': c3Mode,
        'all_mode': allMode,
      };
}
