import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Crop the input video to given dimensions.
class Crop implements Filter {
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
  });

  /// The width of the output video. It defaults to `iw`. This expression is evaluated only once during the filter configuration, or when the [w] or [outW] command is sent.
  int? w, outW;

  /// The height of the output video. It defaults to `ih`. This expression is evaluated only once during the filter configuration, or when the [h] or [outH] command is sent.
  int? h, outH;

  /// The horizontal position, in the input video, of the left edge of the output video. It defaults to `(in_w-out_w)/2`. This expression is evaluated per-frame.
  int? x;

  /// The vertical position, in the input video, of the top edge of the output video. It defaults to `(in_h-out_h)/2`. This expression is evaluated per-frame.
  int? y;

  /// If set to 1 will force the output display aspect ratio to be the same of the input, by changing the output sample aspect ratio. It defaults to `0`.
  int? keepAspect;

  /// Enable exact cropping. If enabled, subsampled videos will be cropped at exact width/height/x/y as specified and will not be rounded to nearest smaller value. It defaults to `0`.
  int? exact;

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
      };
}
