import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust color white balance selectively for blacks and whites. This filter operates in YUV colorspace.
///
/// The filter accepts the following options:
class Colorcorrect extends Filter {
  /// Colorcorrect
  Colorcorrect({
    this.rl,
    this.bl,
    this.rh,
    this.bh,
    this.saturation,
    this.analyze,
  });

  /// Set the red shadow spot. Allowed range is from -1.0 to 1.0. Default value is 0.
  Object? rl;

  /// Set the blue shadow spot. Allowed range is from -1.0 to 1.0. Default value is 0.
  Object? bl;

  /// Set the red highlight spot. Allowed range is from -1.0 to 1.0. Default value is 0.
  Object? rh;

  /// Set the blue highlight spot. Allowed range is from -1.0 to 1.0. Default value is 0.
  Object? bh;

  /// Set the amount of saturation. Allowed range is from -3.0 to 3.0. Default value is 1.
  Object? saturation;

  /// If set to anything other than `manual` it will analyze every frame and use derived parameters for filtering output frame./// Possible values are:
  /// - `manual`
  /// - `average`
  /// - `minmax`
  /// - `median`
  /// Default value is `manual`.
  Object? analyze;

  @override
  String get name => 'colorcorrect';

  @override
  Map<String, dynamic> get options => {
        'rl': rl,
        'bl': bl,
        'rh': rh,
        'bh': bh,
        'saturation': saturation,
        'analyze': analyze,
      };
}
