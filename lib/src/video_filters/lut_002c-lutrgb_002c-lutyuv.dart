import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Compute a look-up table for binding each pixel component input value to an output value, and apply it to the input video.
///
/// These filters accept the following parameters:
///
/// Each of them specifies the expression to use for computing the lookup table for the corresponding pixel component values.
///
/// The expressions can contain the following constants and functions:
///
/// All expressions default to "clipval".
class Lut002cLutrgb002cLutyuv extends Filter {
  /// Lut002cLutrgb002cLutyuv
  Lut002cLutrgb002cLutyuv({
    this.c0,
    this.c1,
    this.c2,
    this.c3,
    this.r,
    this.g,
    this.b,
    this.a,
    this.y,
    this.u,
    this.v,
    this.w,
    this.h,
    this.val,
    this.clipval,
    this.maxval,
    this.minval,
    this.negval,
    this.clip(val),
    this.gammaval(gamma),
  });

  /// set first pixel component expression
  Object? c0;

  /// set second pixel component expression
  Object? c1;

  /// set third pixel component expression
  Object? c2;

  /// set fourth pixel component expression, corresponds to the alpha component
  Object? c3;

  /// set red component expression
  Object? r;

  /// set green component expression
  Object? g;

  /// set blue component expression
  Object? b;

  /// alpha component expression
  Object? a;

  /// set Y/luma component expression
  Object? y;

  /// set U/Cb component expression
  Object? u;

  /// set V/Cr component expression
  Object? v;

  /// The input width and height.
  Object? w;

  /// The input value for the pixel component.
  Object? h;

  /// The input value, clipped to the minval-maxval range.
  Object? val;

  /// The maximum value for the pixel component.
  Object? clipval;

  /// The minimum value for the pixel component.
  Object? maxval;

  /// The negated value for the pixel component value, clipped to the minval-maxval range; it corresponds to the expression "maxval-clipval+minval".
  Object? minval;

  /// The computed value in val, clipped to the minval-maxval range.
  Object? negval;

  /// The computed gamma correction value of the pixel component value, clipped to the minval-maxval range. It corresponds to the expression "pow((clipval-minval)/(maxval-minval)\\,gamma)*(maxval-minval)+minval"
  Object? clip(val);

  Object? gammaval(gamma);

  @override
  String get name => 'lut_002c-lutrgb_002c-lutyuv';

  @override
  Map<String, dynamic> get options => {
        'c0': c0,
        'c1': c1,
        'c2': c2,
        'c3': c3,
        'r': r,
        'g': g,
        'b': b,
        'a': a,
        'y': y,
        'u': u,
        'v': v,
        'w': w,
        'h': h,
        'val': val,
        'clipval': clipval,
        'maxval': maxval,
        'minval': minval,
        'negval': negval,
        'clip(val)': clip(val),
        'gammaval(gamma)': gammaval(gamma),
      };
}
