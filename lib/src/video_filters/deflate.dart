import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply deflate effect to the video.
///
/// This filter replaces the pixel by the local(3x3) average by taking into account only values lower than the pixel.
///
/// It accepts the following options:
class Deflate extends Filter {
  /// Deflate
  Deflate({
    this.threshold0,
    this.threshold1,
    this.threshold2,
    this.threshold3,
  });

  /// Limit the maximum change for each plane, default is 65535. If 0, plane will remain unchanged.
  Object? threshold0;

  Object? threshold1;

  Object? threshold2;

  Object? threshold3;

  @override
  String get name => 'deflate';

  @override
  Map<String, dynamic> get options => {
        'threshold0': threshold0,
        'threshold1': threshold1,
        'threshold2': threshold2,
        'threshold3': threshold3,
      };
}
