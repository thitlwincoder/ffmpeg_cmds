import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following options:
class PadOpencl extends Filter {
  /// PadOpencl
  PadOpencl({
    this.width,
    this.w,
    this.height,
    this.h,
    this.x,
    this.y,
    this.color,
    this.aspect,
    this.inW,
    this.inH,
    this.iw,
    this.ih,
    this.outW,
    this.outH,
    this.ow,
    this.oh,
    this.a,
    this.sar,
    this.dar,
  });

  /// Specify an expression for the size of the output image with the paddings added. If the value for width or height is 0, the corresponding input size is used for the output./// The width expression can reference the value set by the height expression, and vice versa./// The default value of width and height is 0.
  Object? width, w;

  /// Specify the offsets to place the input image at within the padded area, with respect to the top/left border of the output image./// The x expression can reference the value set by the y expression, and vice versa./// The default value of x and y is 0./// If x or y evaluate to a negative number, they’ll be changed so the input image is centered on the padded area.
  Object? height, h;

  /// The x and y offsets as specified by the x and y expressions, or NAN if not yet specified.
  Object? x;

  /// same as iw / ih
  Object? y;

  /// The input video width and height.
  Object? color;

  /// These are the same as in_w and in_h.
  Object? aspect;

  /// The output width and height (the size of the padded area), as specified by the width and height expressions.
  Object? inW;

  /// These are the same as out_w and out_h.
  Object? inH;

  /// input sample aspect ratio
  Object? iw;

  /// input display aspect ratio, it is the same as (iw / ih) \* sar
  Object? ih;

  Object? outW;

  Object? outH;

  Object? ow;

  Object? oh;

  Object? a;

  Object? sar;

  Object? dar;

  @override
  String get name => 'pad_opencl';

  @override
  Map<String, dynamic> get options => {
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'x': x,
        'y': y,
        'color': color,
        'aspect': aspect,
        'in_w': inW,
        'in_h': inH,
        'iw': iw,
        'ih': ih,
        'out_w': outW,
        'out_h': outH,
        'ow': ow,
        'oh': oh,
        'a': a,
        'sar': sar,
        'dar': dar,
      };
}
