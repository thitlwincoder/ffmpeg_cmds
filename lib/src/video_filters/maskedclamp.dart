import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Clamp the first input stream with the second input and third input stream.
///
/// This filter accepts the following options:
class Maskedclamp extends Filter {
  /// Maskedclamp
  Maskedclamp({
    this.undershoot,
    this.overshoot,
    this.planes,
  });

  /// Default value is `0`.
  Object? undershoot;

  /// Default value is `0`.
  Object? overshoot;

  /// Set which planes will be processed as bitmap, unprocessed planes will be copied from first stream. By default value 0xf, all planes will be processed.
  Object? planes;

  @override
  String get name => 'maskedclamp';

  @override
  Map<String, dynamic> get options =>
      {'undershoot': undershoot, 'overshoot': overshoot, 'planes': planes};
}
