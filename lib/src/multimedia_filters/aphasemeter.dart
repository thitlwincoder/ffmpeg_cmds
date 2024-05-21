import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options, all related to its video output:
class Aphasemeter extends Filter {
  /// Aphasemeter
  Aphasemeter({
    this.rate,
    this.r,
    this.size,
    this.s,
    this.rc,
    this.gc,
    this.bc,
    this.mpc,
    this.video,
  });

  /// Set the output frame rate. Default value is `25`.
  Object? rate, r;

  /// Set the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `800x400`.
  Object? size, s;

  /// Specify the red, green, blue contrast. Default values are `2`, `7` and `1`. Allowed range is `\[0, 255\]`.
  Object? rc;

  /// Set color which will be used for drawing median phase. If color is `none` which is default, no median phase value will be drawn.
  Object? gc;

  /// Enable video output. Default is enabled.
  Object? bc;

  Object? mpc;

  Object? video;

  @override
  String get name => 'aphasemeter';

  @override
  Map<String, dynamic> get options => {
        'rate': rate,
        'r': r,
        'size': size,
        's': s,
        'rc': rc,
        'gc': gc,
        'bc': bc,
        'mpc': mpc,
        'video': video,
      };
}
