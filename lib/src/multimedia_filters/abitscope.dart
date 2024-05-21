import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output, displaying the audio bit scope.
///
/// The filter accepts the following options:
class Abitscope extends Filter {
  /// Abitscope
  Abitscope({
    this.rate,
    this.r,
    this.size,
    this.s,
    this.colors,
    this.mode,
    this.m,
  });

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `1024x256`.
  Object? size, s;

  /// Specify list of colors separated by space or by ’|’ which will be used to draw channels. Unrecognized or missing colors will be replaced by white color.
  Object? colors;

  /// Set output mode. Can be `bars` or `trace`. Default is `bars`.
  Object? mode, m;

  @override
  String get name => 'abitscope';

  @override
  Map<String, dynamic> get options => {
        'rate': rate,
        'r': r,
        'size': size,
        's': s,
        'colors': colors,
        'mode': mode,
        'm': m,
      };
}
