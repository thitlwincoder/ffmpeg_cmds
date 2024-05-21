import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Midway Image Equalization effect using two video streams.
///
/// Midway Image Equalization adjusts a pair of images to have the same histogram, while maintaining their dynamics as much as possible. It’s useful for e.g. matching exposures from a pair of stereo cameras.
///
/// This filter has two inputs and one output, which must be of same pixel format, but may be of different sizes. The output of filter is first input adjusted with midway histogram of both inputs.
///
/// This filter accepts the following option:
class Midequalizer extends Filter {
  /// Midequalizer
  Midequalizer({this.planes});

  /// Set which planes to process. Default is `15`, which is all available planes.
  Object? planes;

  @override
  String get name => 'midequalizer';

  @override
  Map<String, dynamic> get options => {'planes': planes};
}
