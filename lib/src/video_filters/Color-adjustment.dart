import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A collection of subjective color controls. Not very rigorous, so the exact effect will vary somewhat depending on the input primaries and colorspace.
class ColorAdjustment extends Filter {
  /// ColorAdjustment
  ColorAdjustment({
    this.brightness,
    this.contrast,
    this.saturation,
    this.hue,
    this.gamma,
    this.cones,
    this.coneStrength,
  });

  /// Brightness boost, between `-1.0` and `1.0`. Defaults to `0.0`.
  Object? brightness;

  /// Contrast gain, between `0.0` and `16.0`. Defaults to `1.0`.
  Object? contrast;

  /// Saturation gain, between `0.0` and `16.0`. Defaults to `1.0`.
  Object? saturation;

  /// Hue shift in radians, between `-3.14` and `3.14`. Defaults to `0.0`. This will rotate the UV subvector, defaulting to BT.709 coefficients for RGB inputs.
  Object? hue;

  /// Gamma adjustment, between `0.0` and `16.0`. Defaults to `1.0`.
  Object? gamma;

  /// Cone model to use for color blindness simulation. Accepts any combination of `l`, `m` and `s`. Here are some examples:
  /// - `m` Deuteranomaly / deuteranopia (affecting 3%-4% of the population)
  /// - `l` Protanomaly / protanopia (affecting 1%-2% of the population)
  /// - `l+m` Monochromacy (very rare)
  /// - `l+m+s` Achromatopsy (complete loss of daytime vision, extremely rare)
  Object? cones;

  /// Gain factor for the cones specified by `cones`, between `0.0` and `10.0`. A value of `1.0` results in no change to color vision. A value of `0.0` (the default) simulates complete loss of those cones. Values above `1.0` result in exaggerating the differences between cones, which may help compensate for reduced color vision.
  Object? coneStrength;

  @override
  String get name => 'Color-adjustment';

  @override
  Map<String, dynamic> get options => {
        'brightness': brightness,
        'contrast': contrast,
        'saturation': saturation,
        'hue': hue,
        'gamma': gamma,
        'cones': cones,
        'cone-strength': coneStrength,
      };
}
