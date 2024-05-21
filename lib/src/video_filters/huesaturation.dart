import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply hue-saturation-intensity adjustments to input video stream.
///
/// This filter operates in RGB colorspace.
///
/// This filter accepts the following options:
class Huesaturation extends Filter {
  /// Huesaturation
  Huesaturation({
    this.hue,
    this.saturation,
    this.intensity,
    this.colors,
    this.strength,
    this.rw,
    this.gw,
    this.bw,
    this.lightness,
  });

  /// Set the hue shift in degrees to apply. Default is 0. Allowed range is from -180 to 180.
  Object? hue;

  /// Set the saturation shift. Default is 0. Allowed range is from -1 to 1.
  Object? saturation;

  /// Set the intensity shift. Default is 0. Allowed range is from -1 to 1.
  Object? intensity;

  /// Set which primary and complementary colors are going to be adjusted. This options is set by providing one or multiple values. This can select multiple colors at once. By default all colors are selected.
  /// - `r` Adjust reds.
  /// - `y` Adjust yellows.
  /// - `g` Adjust greens.
  /// - `c` Adjust cyans.
  /// - `b` Adjust blues.
  /// - `m` Adjust magentas.
  /// - `a` Adjust all colors.
  Object? colors;

  /// Set strength of filtering. Allowed range is from 0 to 100. Default value is 1.
  Object? strength;

  /// Set weight for each RGB component. Allowed range is from 0 to 1. By default is set to 0.333, 0.334, 0.333. Those options are used in saturation and lightess processing.
  Object? rw, gw, bw;

  /// Set preserving lightness, by default is disabled. Adjusting hues can change lightness from original RGB triplet, with this option enabled lightness is kept at same value.
  Object? lightness;

  @override
  String get name => 'huesaturation';

  @override
  Map<String, dynamic> get options => {
        'hue': hue,
        'saturation': saturation,
        'intensity': intensity,
        'colors': colors,
        'strength': strength,
        'rw': rw,
        'gw': gw,
        'bw': bw,
        'lightness': lightness,
      };
}
