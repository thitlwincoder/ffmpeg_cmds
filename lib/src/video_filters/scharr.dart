import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply scharr operator to input video stream.
///
/// The filter accepts the following option:
class Scharr extends Filter {
  /// Scharr
  Scharr({
    this.planes,
    this.scale,
    this.delta,
  });

  /// Set which planes will be processed, unprocessed planes will be copied. By default value 0xf, all planes will be processed.
  Object? planes;

  /// Set value which will be multiplied with filtered result.
  Object? scale;

  /// Set value which will be added to filtered result.
  Object? delta;

  @override
  String get name => 'scharr';

  @override
  Map<String, dynamic> get options =>
      {'planes': planes, 'scale': scale, 'delta': delta};
}
