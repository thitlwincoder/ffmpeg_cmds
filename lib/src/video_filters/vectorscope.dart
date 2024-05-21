import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Display 2 color component values in the two dimensional graph (which is called a vectorscope).
///
/// This filter accepts the following options:
class Vectorscope extends Filter {
  /// Vectorscope
  Vectorscope({
    this.mode,
    this.m,
    this.x,
    this.y,
    this.intensity,
    this.i,
    this.envelope,
    this.e,
    this.graticule,
    this.g,
    this.opacity,
    this.o,
    this.flags,
    this.f,
    this.bgopacity,
    this.b,
    this.lthreshold,
    this.l,
    this.hthreshold,
    this.h,
    this.colorspace,
    this.c,
    this.tint0,
    this.t0,
    this.tint1,
    this.t1,
  });

  /// Set vectorscope mode./// It accepts the following values:
  /// - `gray`
  /// - `tint` Gray values are displayed on graph, higher brightness means more pixels have same component color value on location in graph. This is the default mode.
  /// - `color` Gray values are displayed on graph. Surrounding pixels values which are not present in video frame are drawn in gradient of 2 color components which are set by option x and y. The 3rd color component is static.
  /// - `color2` Actual color components values present in video frame are displayed on graph.
  /// - `color3` Similar as color2 but higher frequency of same values x and y on graph increases value of another color component, which is luminance by default values of x and y.
  /// - `color4` Actual colors present in video frame are displayed on graph. If two different colors map to same position on graph then color with higher value of component not present in graph is picked.
  /// - `color5` Gray values are displayed on graph. Similar to color but with 3rd color component picked from radial gradient.
  Object? mode, m;

  /// Set which color component will be represented on X-axis. Default is `1`.
  Object? x;

  /// Set which color component will be represented on Y-axis. Default is `2`.
  Object? y;

  /// Set intensity, used by modes: gray, color, color3 and color5 for increasing brightness of color component which represents frequency of (X, Y) location in graph.
  Object? intensity, i;

  /// Set what kind of graticule to draw.
  /// - `none`
  /// - `green`
  /// - `color`
  /// - `invert`
  Object? envelope, e;

  /// Set graticule opacity.
  Object? graticule, g;

  /// Set graticule flags.
  /// - `white` Draw graticule for white point.
  /// - `black` Draw graticule for black point.
  /// - `name` Draw color points short names.
  Object? opacity, o;

  /// Set background opacity.
  Object? flags, f;

  /// Set low threshold for color component not represented on X or Y axis. Values lower than this value will be ignored. Default is 0. Note this value is multiplied with actual max possible value one pixel component can have. So for 8-bit input and low threshold value of 0.1 actual threshold is 0.1 * 255 = 25.
  Object? bgopacity, b;

  /// Set high threshold for color component not represented on X or Y axis. Values higher than this value will be ignored. Default is 1. Note this value is multiplied with actual max possible value one pixel component can have. So for 8-bit input and high threshold value of 0.9 actual threshold is 0.9 * 255 = 230.
  Object? lthreshold, l;

  /// Set what kind of colorspace to use when drawing graticule.
  /// - `auto`
  /// - `601`
  /// - `709`
  /// Default is auto.
  Object? hthreshold, h;

  /// Set color tint for gray/tint vectorscope mode. By default both options are zero. This means no tint, and output will remain gray.
  Object? colorspace, c;

  Object? tint0, t0;

  Object? tint1, t1;

  @override
  String get name => 'vectorscope';

  @override
  Map<String, dynamic> get options => {
        'mode': mode,
        'm': m,
        'x': x,
        'y': y,
        'intensity': intensity,
        'i': i,
        'envelope': envelope,
        'e': e,
        'graticule': graticule,
        'g': g,
        'opacity': opacity,
        'o': o,
        'flags': flags,
        'f': f,
        'bgopacity': bgopacity,
        'b': b,
        'lthreshold': lthreshold,
        'l': l,
        'hthreshold': hthreshold,
        'h': h,
        'colorspace': colorspace,
        'c': c,
        'tint0': tint0,
        't0': t0,
        'tint1': tint1,
        't1': t1,
      };
}
