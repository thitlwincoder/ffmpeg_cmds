import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply erosion effect to the video.
///
/// This filter replaces the pixel by the local(3x3) minimum.
///
/// It accepts the following options:
class ErosionOpencl extends Filter {
  /// ErosionOpencl
  ErosionOpencl({
    this.threshold0,
    this.threshold1,
    this.threshold2,
    this.threshold3,
    this.coordinates,
  });

  /// Limit the maximum change for each plane. Range is `\[0, 65535\]` and default value is `65535`. If `0`, plane will remain unchanged.
  Object? threshold0;

  /// Flag which specifies the pixel to refer to. Range is `\[0, 255\]` and default value is `255`, i.e. all eight pixels are used./// Flags to local 3x3 coordinates region centered on `x`:/// 1 2 3/// 4 x 5/// 6 7 8
  Object? threshold1;

  Object? threshold2;

  Object? threshold3;

  Object? coordinates;

  @override
  String get name => 'erosion_opencl';

  @override
  Map<String, dynamic> get options => {
        'threshold0': threshold0,
        'threshold1': threshold1,
        'threshold2': threshold2,
        'threshold3': threshold3,
        'coordinates': coordinates,
      };
}
