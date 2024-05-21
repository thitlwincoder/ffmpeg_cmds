import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Rotate video by an arbitrary angle expressed in radians.
///
/// The filter accepts the following options:
///
/// A description of the optional parameters follows.
///
/// The expressions for the angle and the output size can contain the following constants and functions:
class Rotate extends Filter {
  /// Rotate
  Rotate({
    this.angle,
    this.a,
    this.outW,
    this.ow,
    this.outH,
    this.oh,
    this.bilinear,
    this.fillcolor,
    this.c,
    this.n,
    this.t,
    this.hsub,
    this.vsub,
    this.inW,
    this.iw,
    this.inH,
    this.ih,
    this.rotw(a),
    this.roth(a),
  });

  /// Set an expression for the angle by which to rotate the input video clockwise, expressed as a number of radians. A negative value will result in a counter-clockwise rotation. By default it is set to "0"./// This expression is evaluated for each frame.
  Object? angle, a;

  /// the output width and height, that is the size of the padded area as specified by the width and height expressions
  Object? outW, ow;

  /// the minimal width/height required for completely containing the input video rotated by a radians./// These are only available when computing the /// out_w and /// out_h expressions.
  Object? outH, oh;

  /// Enable bilinear interpolation if set to 1, a value of 0 disables it. Default value is 1.
  Object? bilinear;

  /// Set the color used to fill the output area not covered by the rotated image. For the general syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). If the special value "none" is selected then no background is printed (useful for example if the background is never shown)./// Default value is "black".
  Object? fillcolor, c;

  /// sequential number of the input frame, starting from 0. It is always NAN before the first frame is filtered.
  Object? n;

  /// time in seconds of the input frame, it is set to 0 when the filter is configured. It is always NAN before the first frame is filtered.
  Object? t;

  /// horizontal and vertical chroma subsample values. For example for the pixel format "yuv422p" hsub is 2 and vsub is 1.
  Object? hsub;

  /// the input video width and height
  Object? vsub;

  Object? inW, iw;

  Object? inH, ih;

  Object? rotw(a);

  Object? roth(a);

  @override
  String get name => 'rotate';

  @override
  Map<String, dynamic> get options => {
        'angle': angle,
        'a': a,
        'out_w': outW,
        'ow': ow,
        'out_h': outH,
        'oh': oh,
        'bilinear': bilinear,
        'fillcolor': fillcolor,
        'c': c,
        'n': n,
        't': t,
        'hsub': hsub,
        'vsub': vsub,
        'in_w': inW,
        'iw': iw,
        'in_h': inH,
        'ih': ih,
        'rotw(a)': rotw(a),
        'roth(a)': roth(a),
      };
}
