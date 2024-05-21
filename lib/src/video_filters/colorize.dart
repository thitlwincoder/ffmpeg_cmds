import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Overlay a solid color on the video stream.
///
/// The filter accepts the following options:
class Colorize extends Filter {
  /// Colorize
  Colorize({
    this.hue,
    this.saturation,
    this.lightness,
    this.mix,
  });

  /// Set the color hue. Allowed range is from 0 to 360. Default value is 0.
  Object? hue;

  /// Set the color saturation. Allowed range is from 0 to 1. Default value is 0.5.
  Object? saturation;

  /// Set the color lightness. Allowed range is from 0 to 1. Default value is 0.5.
  Object? lightness;

  /// Set the mix of source lightness. By default is set to 1.0. Allowed range is from 0.0 to 1.0.
  Object? mix;

  @override
  String get name => 'colorize';

  @override
  Map<String, dynamic> get options => {
        'hue': hue,
        'saturation': saturation,
        'lightness': lightness,
        'mix': mix,
      };
}
