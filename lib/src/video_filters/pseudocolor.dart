import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Alter frame colors in video with pseudocolors.
///
/// This filter accepts the following options:
///
/// Each of the expression options specifies the expression to use for computing the lookup table for the corresponding pixel component values.
///
/// The expressions can contain the following constants and functions:
///
/// All expressions default to "val".
class Pseudocolor extends Filter {
  /// Pseudocolor
  Pseudocolor({
    this.c0,
    this.c1,
    this.c2,
    this.c3,
    this.index,
    this.i,
    this.preset,
    this.p,
    this.opacity,
    this.w,
    this.h,
    this.val,
    this.ymin,
    this.umin,
    this.vmin,
    this.amin,
    this.ymax,
    this.umax,
    this.vmax,
    this.amax,
  });

  /// set pixel first component expression
  Object? c0;

  /// set pixel second component expression
  Object? c1;

  /// set pixel third component expression
  Object? c2;

  /// set pixel fourth component expression, corresponds to the alpha component
  Object? c3;

  /// set component to use as base for altering colors
  Object? index, i;

  /// Pick one of built-in LUTs. By default is set to none./// Available LUTs:
  /// - `magma`
  /// - `inferno`
  /// - `plasma`
  /// - `viridis`
  /// - `turbo`
  /// - `cividis`
  /// - `range1`
  /// - `range2`
  /// - `shadows`
  /// - `highlights`
  /// - `solar`
  /// - `nominal`
  /// - `preferred`
  /// - `total`
  /// - `spectral`
  /// - `cool`
  /// - `heat`
  /// - `fiery`
  /// - `blues`
  /// - `green`
  /// - `helix`
  Object? preset, p;

  /// Set opacity of output colors. Allowed range is from 0 to 1. Default value is set to 1.
  Object? opacity;

  /// The input width and height.
  Object? w;

  /// The input value for the pixel component.
  Object? h;

  /// The minimum allowed component value.
  Object? val;

  /// The maximum allowed component value.
  Object? ymin, umin, vmin, amin;

  Object? ymax, umax, vmax, amax;

  @override
  String get name => 'pseudocolor';

  @override
  Map<String, dynamic> get options => {
        'c0': c0,
        'c1': c1,
        'c2': c2,
        'c3': c3,
        'index': index,
        'i': i,
        'preset': preset,
        'p': p,
        'opacity': opacity,
        'w': w,
        'h': h,
        'val': val,
        'ymin': ymin,
        'umin': umin,
        'vmin': vmin,
        'amin': amin,
        'ymax': ymax,
        'umax': umax,
        'vmax': vmax,
        'amax': amax,
      };
}
