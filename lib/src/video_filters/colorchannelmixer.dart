import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust video input frames by re-mixing color channels.
///
/// This filter modifies a color channel by adding the values associated to the other channels of the same pixels. For example if the value to modify is red, the output value will be:
///
/// The filter accepts the following options:
class Colorchannelmixer extends Filter {
  /// Colorchannelmixer
  Colorchannelmixer({
    this.rr,
    this.rg,
    this.rb,
    this.ra,
    this.gr,
    this.gg,
    this.gb,
    this.ga,
    this.br,
    this.bg,
    this.bb,
    this.ba,
    this.ar,
    this.ag,
    this.ab,
    this.aa,
    this.pc,
    this.pa,
  });

  /// Adjust contribution of input red, green, blue and alpha channels for output red channel. Default is `1` for rr, and `0` for rg, rb and ra.
  Object? rr;

  /// Adjust contribution of input red, green, blue and alpha channels for output green channel. Default is `1` for gg, and `0` for gr, gb and ga.
  Object? rg;

  /// Adjust contribution of input red, green, blue and alpha channels for output blue channel. Default is `1` for bb, and `0` for br, bg and ba.
  Object? rb;

  /// Adjust contribution of input red, green, blue and alpha channels for output alpha channel. Default is `1` for aa, and `0` for ar, ag and ab./// Allowed ranges for options are `\[-2.0, 2.0\]`.
  Object? ra;

  /// Set preserve color mode. The accepted values are:
  /// - `none` Disable color preserving, this is default.
  /// - `lum` Preserve luminance.
  /// - `max` Preserve max value of RGB triplet.
  /// - `avg` Preserve average value of RGB triplet.
  /// - `sum` Preserve sum value of RGB triplet.
  /// - `nrm` Preserve normalized value of RGB triplet.
  /// - `pwr` Preserve power value of RGB triplet.
  Object? gr;

  /// Set the preserve color amount when changing colors. Allowed range is from `\[0.0, 1.0\]`. Default is `0.0`, thus disabled.
  Object? gg;

  Object? gb;

  Object? ga;

  Object? br;

  Object? bg;

  Object? bb;

  Object? ba;

  Object? ar;

  Object? ag;

  Object? ab;

  Object? aa;

  Object? pc;

  Object? pa;

  @override
  String get name => 'colorchannelmixer';

  @override
  Map<String, dynamic> get options => {
        'rr': rr,
        'rg': rg,
        'rb': rb,
        'ra': ra,
        'gr': gr,
        'gg': gg,
        'gb': gb,
        'ga': ga,
        'br': br,
        'bg': bg,
        'bb': bb,
        'ba': ba,
        'ar': ar,
        'ag': ag,
        'ab': ab,
        'aa': aa,
        'pc': pc,
        'pa': pa,
      };
}
