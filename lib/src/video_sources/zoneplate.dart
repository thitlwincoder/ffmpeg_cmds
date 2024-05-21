import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a zoneplate test video pattern.
///
/// This source accepts the following options:
class Zoneplate extends Filter {
  /// Zoneplate
  Zoneplate({
    this.size,
    this.s,
    this.rate,
    this.r,
    this.duration,
    this.d,
    this.sar,
    this.precision,
    this.xo,
    this.yo,
    this.to,
    this.k0,
    this.kx,
    this.ky,
    this.kt,
    this.kxt,
    this.kyt,
    this.kxy,
    this.kx2,
    this.ky2,
    this.kt2,
    this.ku,
    this.kv,
  });

  /// Set frame size. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is "320x240".
  Object? size, s;

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Set the duration of the sourced video. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax./// If not specified, or the expressed duration is negative, the video is supposed to be generated forever.
  Object? duration, d;

  /// Set the sample aspect ratio of the sourced video.
  Object? sar;

  /// Set precision in bits for look-up table for sine calculations. Default value is 10. Allowed range is from 4 to 16.
  Object? precision;

  /// Set horizontal axis offset for output signal. Default value is 0.
  Object? xo;

  /// Set vertical axis offset for output signal. Default value is 0.
  Object? yo;

  /// Set time axis offset for output signal. Default value is 0.
  Object? to;

  /// Set 0-order, constant added to signal phase. Default value is 0.
  Object? k0;

  /// Set 1-order, phase factor multiplier for horizontal axis. Default value is 0.
  Object? kx;

  /// Set 1-order, phase factor multiplier for vertical axis. Default value is 0.
  Object? ky;

  /// Set 1-order, phase factor multiplier for time axis. Default value is 0.
  Object? kt;

  /// Set phase factor multipliers for combination of spatial and temporal axis. Default value is 0.
  Object? kxt, kyt, kxy;

  /// Set 2-order, phase factor multiplier for horizontal axis. Default value is 0.
  Object? kx2;

  /// Set 2-order, phase factor multiplier for vertical axis. Default value is 0.
  Object? ky2;

  /// Set 2-order, phase factor multiplier for time axis. Default value is 0.
  Object? kt2;

  /// Set the constant added to final phase to produce chroma-blue component of signal. Default value is 0.
  Object? ku;

  /// Set the constant added to final phase to produce chroma-red component of signal. Default value is 0.
  Object? kv;

  @override
  String get name => 'zoneplate';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'duration': duration,
        'd': d,
        'sar': sar,
        'precision': precision,
        'xo': xo,
        'yo': yo,
        'to': to,
        'k0': k0,
        'kx': kx,
        'ky': ky,
        'kt': kt,
        'kxt': kxt,
        'kyt': kyt,
        'kxy': kxy,
        'kx2': kx2,
        'ky2': ky2,
        'kt2': kt2,
        'ku': ku,
        'kv': kv,
      };
}
