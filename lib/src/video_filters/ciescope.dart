import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Display CIE color diagram with pixels overlaid onto it.
///
/// The filter accepts the following options:
class Ciescope extends Filter {
  /// Ciescope
  Ciescope({
    this.system,
    this.cie,
    this.gamuts,
    this.size,
    this.s,
    this.intensity,
    this.i,
    this.contrast,
    this.corrgamma,
    this.showwhite,
    this.gamma,
    this.fill,
  });

  /// Set color system.
  /// - `ntsc, 470m`
  /// - `ebu, 470bg`
  /// - `smpte`
  /// - `240m`
  /// - `apple`
  /// - `widergb`
  /// - `cie1931`
  /// - `rec709, hdtv`
  /// - `uhdtv, rec2020`
  /// - `dcip3`
  Object? system;

  /// Set CIE system.
  /// - `xyy`
  /// - `ucs`
  /// - `luv`
  Object? cie;

  /// Set what gamuts to draw./// See `system` option for available values.
  Object? gamuts;

  /// Set ciescope size, by default set to 512.
  Object? size, s;

  /// Set intensity used to map input pixel values to CIE diagram.
  Object? intensity, i;

  /// Set contrast used to draw tongue colors that are out of active color system gamut.
  Object? contrast;

  /// Correct gamma displayed on scope, by default enabled.
  Object? corrgamma;

  /// Show white point on CIE diagram, by default disabled.
  Object? showwhite;

  /// Set input gamma. Used only with XYZ input color space.
  Object? gamma;

  /// Fill with CIE colors. By default is enabled.
  Object? fill;

  @override
  String get name => 'ciescope';

  @override
  Map<String, dynamic> get options => {
        'system': system,
        'cie': cie,
        'gamuts': gamuts,
        'size': size,
        's': s,
        'intensity': intensity,
        'i': i,
        'contrast': contrast,
        'corrgamma': corrgamma,
        'showwhite': showwhite,
        'gamma': gamma,
        'fill': fill,
      };
}
