import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Crop the input video to given dimensions.
///
/// It accepts the following parameters:
class Crop extends Filter {
  /// Crop
  Crop({
    this.w,
    this.outW,
    this.h,
    this.outH,
    this.x,
    this.y,
    this.keepAspect,
    this.exact,
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
    this.hsub,
    this.vsub,
    this.n,
    this.pos,
    this.t,
  });

  /// The width of the output video. It defaults to `iw`. This expression is evaluated only once during the filter configuration, or when the ‘/// w’ or ‘/// out_w’ command is sent.
  Object? w, outW;

  /// The height of the output video. It defaults to `ih`. This expression is evaluated only once during the filter configuration, or when the ‘/// h’ or ‘/// out_h’ command is sent.
  Object? h, outH;

  /// The computed values for x and y. They are evaluated for each new frame.
  Object? x;

  /// The input width and height.
  Object? y;

  /// If set to 1 will force the output display aspect ratio to be the same of the input, by changing the output sample aspect ratio. It defaults to 0.
  Object? keepAspect;

  /// Enable exact cropping. If enabled, subsampled videos will be cropped at exact width/height/x/y as specified and will not be rounded to nearest smaller value. It defaults to 0.
  Object? exact;

  /// These are the same as in_w and in_h.
  Object? inW;

  /// The output (cropped) width and height.
  Object? inH;

  /// These are the same as out_w and out_h.
  Object? iw;

  /// same as iw / ih
  Object? ih;

  /// input sample aspect ratio
  Object? outW;

  /// input display aspect ratio, it is the same as (iw / ih) \* sar
  Object? outH;

  /// horizontal and vertical chroma subsample values. For example for the pixel format "yuv422p" hsub is 2 and vsub is 1.
  Object? ow;

  /// The number of the input frame, starting from 0.
  Object? oh;

  /// the position in the file of the input frame, NAN if unknown; deprecated, do not use
  Object? a;

  /// The timestamp expressed in seconds. It’s NAN if the input timestamp is unknown.
  Object? sar;

  Object? dar;

  Object? hsub;

  Object? vsub;

  Object? n;

  Object? pos;

  Object? t;

  @override
  String get name => 'crop';

  @override
  Map<String, dynamic> get options => {
        'w': w,
        'out_w': outW,
        'h': h,
        'out_h': outH,
        'x': x,
        'y': y,
        'keep_aspect': keepAspect,
        'exact': exact,
        'in_w': inW,
        'in_h': inH,
        'iw': iw,
        'ih': ih,
        'ow': ow,
        'oh': oh,
        'a': a,
        'sar': sar,
        'dar': dar,
        'hsub': hsub,
        'vsub': vsub,
        'n': n,
        'pos': pos,
        't': t,
      };
}
