import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply 2D deconvolution of video stream in frequency domain using second stream as impulse.
///
/// The filter accepts the following options:
class Deconvolve extends Filter {
  /// Deconvolve
  Deconvolve({
    this.planes,
    this.impulse,
    this.noise,
  });

  /// Set which planes to process.
  Object? planes;

  /// Set which impulse video frames will be processed, can be first or all. Default is all.
  Object? impulse;

  /// Set noise when doing divisions. Default is 0.0000001. Useful when width and height are not same and not power of 2 or if stream prior to convolving had noise.
  Object? noise;

  @override
  String get name => 'deconvolve';

  @override
  Map<String, dynamic> get options =>
      {'planes': planes, 'impulse': impulse, 'noise': noise};
}
