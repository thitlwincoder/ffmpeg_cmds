import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Draw a colored box on the input image.
///
/// It accepts the following parameters:
class Drawbox extends Filter {
  /// Drawbox
  Drawbox({
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
    this.boxSource,
    this.t,
  });

  /// The x and y offset coordinates where the box is drawn.
  Object? x;

  /// The width and height of the drawn box.
  Object? y;

  /// Specify the color of the box to write. For the general syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). If the special value `invert` is used, the box edge color is the same as the video with inverted luma.
  Object? width, w;

  /// The expression which sets the thickness of the box edge. A value of `fill` will create a filled box. Default value is `3`./// See below for the list of accepted constants.
  Object? height, h;

  /// Applicable if the input has alpha. With value `1`, the pixels of the painted box will overwrite the video’s color and alpha pixels. Default is `0`, which composites the box onto the input, leaving the video’s alpha intact.
  Object? color, c;

  /// The input display aspect ratio, it is the same as (w / h) \* sar.
  Object? thickness, t;

  /// horizontal and vertical chroma subsample values. For example for the pixel format "yuv422p" hsub is 2 and vsub is 1.
  Object? replace;

  /// The input width and height.
  Object? dar;

  /// The input sample aspect ratio.
  Object? hsub;

  /// Box source can be set as side\_data\_detection_bboxes if you want to use box data in detection bboxes of side data./// If box_source is set, the x, y, width and height will be ignored and still use box data in detection bboxes of side data. So please do not use this parameter if you were not sure about the box source.
  Object? vsub;

  /// The thickness of the drawn box./// These constants allow the x, y, w, h and t expressions to refer to each other, so you may for example specify `y=x/dar` or `h=w/dar`.
  Object? inH, ih;

  Object? inW, iw;

  Object? sar;

  Object? w;

  Object? h;

  Object? boxSource;

  Object? t;

  @override
  String get name => 'drawbox';

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
        'box_source': boxSource,
      };
}
