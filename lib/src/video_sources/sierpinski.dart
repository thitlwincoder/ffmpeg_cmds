import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a Sierpinski carpet/triangle fractal, and randomly pan around.
///
/// This source accepts the following options:
class Sierpinski extends Filter {
  /// Sierpinski
  Sierpinski({
    this.size,
    this.s,
    this.rate,
    this.r,
    this.seed,
    this.jump,
    this.type,
  });

  /// Set frame size. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is "640x480".
  Object? size, s;

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Set seed which is used for random panning.
  Object? seed;

  /// Set max jump for single pan destination. Allowed range is from 1 to 10000.
  Object? jump;

  /// Set fractal type, can be default `carpet` or `triangle`.
  Object? type;

  @override
  String get name => 'sierpinski';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'seed': seed,
        'jump': jump,
        'type': type,
      };
}
