import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following parameters:
class BwdifVulkan extends Filter {
  /// BwdifVulkan
  BwdifVulkan({
    this.mode,
    this.parity,
    this.deint,
  });

  /// The interlacing mode to adopt. It accepts one of the following values:
  /// - `0, send_frame` Output one frame for each frame.
  /// - `1, send_field` Output one frame for each field.

  /// The default value is `send_field`.
  Object? mode;

  /// The picture field parity assumed for the input interlaced video. It accepts one of the following values:
  /// - `0, tff` Assume the top field is first.
  /// - `1, bff` Assume the bottom field is first.
  /// - `-1, auto` Enable automatic detection of field parity.

  /// The default value is `auto`. If the interlacing is unknown or the decoder does not export this information, top field first will be assumed.
  Object? parity;

  /// Specify which frames to deinterlace. Accepts one of the following values:
  /// - `0, all` Deinterlace all frames.
  /// - `1, interlaced` Only deinterlace frames marked as interlaced.

  /// The default value is `all`.
  Object? deint;

  @override
  String get name => 'bwdif_vulkan';

  @override
  Map<String, dynamic> get options =>
      {'mode': mode, 'parity': parity, 'deint': deint};
}
