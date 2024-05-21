import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply 2D convolution of video stream in frequency domain using second stream as impulse.
///
/// The filter accepts the following options:
class Convolve extends Filter {
  /// Convolve
  Convolve({
    this.planes,
    this.impulse,
  });

  /// Set which planes to process.
  Object? planes;

  /// Set which impulse video frames will be processed, can be first or all. Default is all.
  Object? impulse;

  @override
  String get name => 'convolve';

  @override
  Map<String, dynamic> get options => {'planes': planes, 'impulse': impulse};
}
