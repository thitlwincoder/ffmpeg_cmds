import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate several gradients.
class Gradients extends Filter {
  /// Gradients
  Gradients({
    this.size,
    this.s,
    this.rate,
    this.r,
    this.c0,
    this.c1,
    this.c2,
    this.c3,
    this.c4,
    this.c5,
    this.c6,
    this.c7,
    this.x0,
    this.y0,
    this.y0,
    this.y1,
    this.nbColors,
    this.n,
    this.seed,
    this.duration,
    this.d,
    this.speed,
    this.type,
    this.t,
  });

  /// Set frame size. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is "640x480".
  Object? size, s;

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Set 8 colors. Default values for colors is to pick random one.
  Object? c0, c1, c2, c3, c4, c5, c6, c7;

  /// Set gradient line source and destination points. If negative or out of range, random ones are picked.
  Object? x0, y0, y0, y1;

  /// Set number of colors to use at once. Allowed range is from 2 to 8. Default value is 2.
  Object? nbColors, n;

  /// Set seed for picking gradient line points.
  Object? seed;

  /// Set the duration of the sourced video. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax./// If not specified, or the expressed duration is negative, the video is supposed to be generated forever.
  Object? duration, d;

  /// Set speed of gradients rotation.
  Object? speed;

  /// Set type of gradients. Available values are:
  /// - `linear`
  /// - `radial`
  /// - `circular`
  /// - `spiral`
  /// - `square`
  /// Default type is linear.
  Object? type, t;

  @override
  String get name => 'gradients';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'c0': c0,
        'c1': c1,
        'c2': c2,
        'c3': c3,
        'c4': c4,
        'c5': c5,
        'c6': c6,
        'c7': c7,
        'x0': x0,
        'y0': y0,
        'y1': y1,
        'nb_colors': nbColors,
        'n': n,
        'seed': seed,
        'duration': duration,
        'd': d,
        'speed': speed,
        'type': type,
        't': t,
      };
}
