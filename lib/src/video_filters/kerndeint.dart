import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Deinterlace input video by applying Donald Graft’s adaptive kernel deinterling. Work on interlaced parts of a video to produce progressive frames.
///
/// The description of the accepted parameters follows.
class Kerndeint extends Filter {
  /// Kerndeint
  Kerndeint({
    this.thresh,
    this.map,
    this.order,
    this.sharp,
    this.twoway,
  });

  /// Set the threshold which affects the filter’s tolerance when determining if a pixel line must be processed. It must be an integer in the range \[0,255\] and defaults to 10. A value of 0 will result in applying the process on every pixels.
  Object? thresh;

  /// Paint pixels exceeding the threshold value to white if set to 1. Default is 0.
  Object? map;

  /// Set the fields order. Swap fields if set to 1, leave fields alone if 0. Default is 0.
  Object? order;

  /// Enable additional sharpening if set to 1. Default is 0.
  Object? sharp;

  /// Enable twoway sharpening if set to 1. Default is 0.
  Object? twoway;

  @override
  String get name => 'kerndeint';

  @override
  Map<String, dynamic> get options => {
        'thresh': thresh,
        'map': map,
        'order': order,
        'sharp': sharp,
        'twoway': twoway,
      };
}
