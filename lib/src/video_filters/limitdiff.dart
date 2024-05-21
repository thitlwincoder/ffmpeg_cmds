import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply limited difference filter using second and optionally third video stream.
///
/// The filter accepts the following options:
class Limitdiff extends Filter {
  /// Limitdiff
  Limitdiff({
    this.threshold,
    this.elasticity,
    this.reference,
    this.planes,
  });

  /// Set the threshold to use when allowing certain differences between video streams. Any absolute difference value lower or exact than this threshold will pick pixel components from first video stream.
  Object? threshold;

  /// Set the elasticity of soft thresholding when processing video streams. This value multiplied with first one sets second threshold. Any absolute difference value greater or exact than second threshold will pick pixel components from second video stream. For values between those two threshold linear interpolation between first and second video stream will be used.
  Object? elasticity;

  /// Enable the reference (third) video stream processing. By default is disabled. If set, this video stream will be used for calculating absolute difference with first video stream.
  Object? reference;

  /// Specify which planes will be processed. Defaults to all available.
  Object? planes;

  @override
  String get name => 'limitdiff';

  @override
  Map<String, dynamic> get options => {
        'threshold': threshold,
        'elasticity': elasticity,
        'reference': reference,
        'planes': planes,
      };
}
