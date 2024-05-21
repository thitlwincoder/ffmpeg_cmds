import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Feature-point based video stabilization filter.
///
/// The filter accepts the following options:
class DeshakeOpencl extends Filter {
  /// DeshakeOpencl
  DeshakeOpencl({
    this.tripod,
    this.debug,
    this.adaptiveCrop,
    this.refineFeatures,
    this.smoothStrength,
    this.smoothWindowMultiplier,
  });

  /// Simulates a tripod by preventing any camera movement whatsoever from the original frame. Defaults to `0`.
  Object? tripod;

  /// Whether or not additional debug info should be displayed, both in the processed output and in the console./// Note that in order to see console debug output you will also need to pass `-v verbose` to ffmpeg./// Viewing point matches in the output video is only supported for RGB input./// Defaults to `0`.
  Object? debug;

  /// Whether or not to do a tiny bit of cropping at the borders to cut down on the amount of mirrored pixels./// Defaults to `1`.
  Object? adaptiveCrop;

  /// Whether or not feature points should be refined at a sub-pixel level./// This can be turned off for a slight performance gain at the cost of precision./// Defaults to `1`.
  Object? refineFeatures;

  /// The strength of the smoothing applied to the camera path from `0.0` to `1.0`./// `1.0` is the maximum smoothing strength while values less than that result in less smoothing./// `0.0` causes the filter to adaptively choose a smoothing strength on a per-frame basis./// Defaults to `0.0`.
  Object? smoothStrength;

  /// Controls the size of the smoothing window (the number of frames buffered to determine motion information from)./// The size of the smoothing window is determined by multiplying the framerate of the video by this number./// Acceptable values range from `0.1` to `10.0`./// Larger values increase the amount of motion data available for determining how to smooth the camera path, potentially improving smoothness, but also increase latency and memory usage./// Defaults to `2.0`.
  Object? smoothWindowMultiplier;

  @override
  String get name => 'deshake_opencl';

  @override
  Map<String, dynamic> get options => {
        'tripod': tripod,
        'debug': debug,
        'adaptive_crop': adaptiveCrop,
        'refine_features': refineFeatures,
        'smooth_strength': smoothStrength,
        'smooth_window_multiplier': smoothWindowMultiplier,
      };
}
