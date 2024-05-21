import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Multiply first video stream pixels values with second video stream pixels values.
///
/// The filter accepts the following options:
class Multiply extends Filter {
  /// Multiply
  Multiply({
    this.scale,
    this.offset,
    this.planes,
  });

  /// Set the scale applied to second video stream. By default is `1`. Allowed range is from `0` to `9`.
  Object? scale;

  /// Set the offset applied to second video stream. By default is `0.5`. Allowed range is from `-1` to `1`.
  Object? offset;

  /// Specify planes from input video stream that will be processed. By default all planes are processed.
  Object? planes;

  @override
  String get name => 'multiply';

  @override
  Map<String, dynamic> get options =>
      {'scale': scale, 'offset': offset, 'planes': planes};
}
