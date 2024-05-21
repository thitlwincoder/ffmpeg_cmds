import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following parameters:
class TransposeVulkan extends Filter {
  /// TransposeVulkan
  TransposeVulkan({
    this.dir,
    this.passthrough,
  });

  /// Specify the transposition direction./// Can assume the following values:
  /// - `cclock_flip` Rotate by 90 degrees counterclockwise and vertically flip. (default)
  /// - `clock` Rotate by 90 degrees clockwise.
  /// - `cclock` Rotate by 90 degrees counterclockwise.
  /// - `clock_flip` Rotate by 90 degrees clockwise and vertically flip.
  Object? dir;

  /// Do not apply the transposition if the input geometry matches the one specified by the specified value. It accepts the following values:
  /// - `none` Always apply transposition. (default)
  /// - `portrait` Preserve portrait geometry (when height >= width).
  /// - `landscape` Preserve landscape geometry (when width >= height).
  Object? passthrough;

  @override
  String get name => 'transpose_vulkan';

  @override
  Map<String, dynamic> get options => {'dir': dir, 'passthrough': passthrough};
}
