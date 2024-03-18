import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Rotate video by an arbitrary angle expressed in radians.
class Rotate implements Filter {
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
  });

  /// Set an expression for the angle by which to rotate the input video clockwise, expressed as a number of radians. A negative value will result in a counter-clockwise rotation. By default it is set to `0`.
  ///
  /// This expression is evaluated for each frame.
  int? angle, a;

  /// Set the output width expression, default value is `iw`. This expression is evaluated just once during configuration.
  String? outW, ow;

  /// Set the output height expression, default value is `ih`. This expression is evaluated just once during configuration.
  String? outH, oh;

  /// Enable bilinear interpolation if set to 1, a value of 0 disables it. Default value is `1`.
  int? bilinear;

  /// Set the color used to fill the output area not covered by the rotated image. For the general syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax) If the special value "none" is selected then no background is printed (useful for example if the background is never shown).
  ///
  /// Default value is `black`.
  String? fillcolor, c;

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
      };
}
