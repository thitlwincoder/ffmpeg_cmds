import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust video input frames using levels.
///
/// The filter accepts the following options:
class Colorlevels extends Filter {
  /// Colorlevels
  Colorlevels({
    this.rimin,
    this.gimin,
    this.bimin,
    this.aimin,
    this.rimax,
    this.gimax,
    this.bimax,
    this.aimax,
    this.romin,
    this.gomin,
    this.bomin,
    this.aomin,
    this.romax,
    this.gomax,
    this.bomax,
    this.aomax,
    this.preserve,
  });

  /// Adjust red, green, blue and alpha input black point. Allowed ranges for options are `\[-1.0, 1.0\]`. Defaults are `0`.
  Object? rimin;

  /// Adjust red, green, blue and alpha input white point. Allowed ranges for options are `\[-1.0, 1.0\]`. Defaults are `1`./// Input levels are used to lighten highlights (bright tones), darken shadows (dark tones), change the balance of bright and dark tones.
  Object? gimin;

  /// Adjust red, green, blue and alpha output black point. Allowed ranges for options are `\[0, 1.0\]`. Defaults are `0`.
  Object? bimin;

  /// Adjust red, green, blue and alpha output white point. Allowed ranges for options are `\[0, 1.0\]`. Defaults are `1`./// Output levels allows manual selection of a constrained output level range.
  Object? aimin;

  /// Set preserve color mode. The accepted values are:
  /// - `none` Disable color preserving, this is default.
  /// - `lum` Preserve luminance.
  /// - `max` Preserve max value of RGB triplet.
  /// - `avg` Preserve average value of RGB triplet.
  /// - `sum` Preserve sum value of RGB triplet.
  /// - `nrm` Preserve normalized value of RGB triplet.
  /// - `pwr` Preserve power value of RGB triplet.
  Object? rimax;

  Object? gimax;

  Object? bimax;

  Object? aimax;

  Object? romin;

  Object? gomin;

  Object? bomin;

  Object? aomin;

  Object? romax;

  Object? gomax;

  Object? bomax;

  Object? aomax;

  Object? preserve;

  @override
  String get name => 'colorlevels';

  @override
  Map<String, dynamic> get options => {
        'rimin': rimin,
        'gimin': gimin,
        'bimin': bimin,
        'aimin': aimin,
        'rimax': rimax,
        'gimax': gimax,
        'bimax': bimax,
        'aimax': aimax,
        'romin': romin,
        'gomin': gomin,
        'bomin': bomin,
        'aomin': aomin,
        'romax': romax,
        'gomax': gomax,
        'bomax': bomax,
        'aomax': aomax,
        'preserve': preserve,
      };
}
