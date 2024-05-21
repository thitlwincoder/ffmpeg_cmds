import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Draw a grid on the input image.
///
/// It accepts the following parameters:
class Drawgrid extends Filter {
  /// Drawgrid
  Drawgrid({
    this.x,
    this.y,
    this.width,
    this.w,
    this.height,
    this.h,
    this.color,
    this.c,
    this.thickness,
    this.t,
    this.replace,
    this.dar,
    this.hsub,
    this.vsub,
    this.inH,
    this.ih,
    this.inW,
    this.iw,
    this.sar,
    this.w,
    this.h,
    this.t,
  });

  /// The x and y coordinates of some point of grid intersection (meant to configure offset).
  Object? x;

  /// The width and height of the drawn cell.
  Object? y;

  /// Specify the color of the grid. For the general syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). If the special value `invert` is used, the grid color is the same as the video with inverted luma.
  Object? width, w;

  /// The expression which sets the thickness of the grid line. Default value is `1`./// See below for the list of accepted constants.
  Object? height, h;

  /// Applicable if the input has alpha. With `1` the pixels of the painted grid will overwrite the video’s color and alpha pixels. Default is `0`, which composites the grid onto the input, leaving the video’s alpha intact.
  Object? color, c;

  /// The input display aspect ratio, it is the same as (w / h) \* sar.
  Object? thickness, t;

  /// horizontal and vertical chroma subsample values. For example for the pixel format "yuv422p" hsub is 2 and vsub is 1.
  Object? replace;

  /// The input grid cell width and height.
  Object? dar;

  /// The input sample aspect ratio.
  Object? hsub;

  /// The thickness of the drawn cell./// These constants allow the x, y, w, h and t expressions to refer to each other, so you may for example specify `y=x/dar` or `h=w/dar`.
  Object? vsub;

  Object? inH, ih;

  Object? inW, iw;

  Object? sar;

  Object? w;

  Object? h;

  Object? t;

  @override
  String get name => 'drawgrid';

  @override
  Map<String, dynamic> get options => {
        'x': x,
        'y': y,
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'color': color,
        'c': c,
        'thickness': thickness,
        't': t,
        'replace': replace,
        'dar': dar,
        'hsub': hsub,
        'vsub': vsub,
        'in_h': inH,
        'ih': ih,
        'in_w': inW,
        'iw': iw,
        'sar': sar,
      };
}
