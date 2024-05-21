import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to 3d scope video output.
///
/// The filter accepts the following options:
class A3dscope extends Filter {
  /// A3dscope
  A3dscope({
    this.rate,
    this.r,
    this.size,
    this.s,
    this.fov,
    this.roll,
    this.pitch,
    this.yaw,
    this.xzoom,
    this.yzoom,
    this.zzoom,
    this.xpos,
    this.ypos,
    this.zpos,
    this.length,
  });

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `hd720`.
  Object? size, s;

  /// Set the camera field of view. Default is 90 degrees. Allowed range is from 40 to 150.
  Object? fov;

  /// Set the camera roll.
  Object? roll;

  /// Set the camera pitch.
  Object? pitch;

  /// Set the camera yaw.
  Object? yaw;

  /// Set the camera zoom on X-axis.
  Object? xzoom;

  /// Set the camera zoom on Y-axis.
  Object? yzoom;

  /// Set the camera zoom on Z-axis.
  Object? zzoom;

  /// Set the camera position on X-axis.
  Object? xpos;

  /// Set the camera position on Y-axis.
  Object? ypos;

  /// Set the camera position on Z-axis.
  Object? zpos;

  /// Set the length of displayed audio waves in number of frames.
  Object? length;

  @override
  String get name => 'a3dscope';

  @override
  Map<String, dynamic> get options => {
        'rate': rate,
        'r': r,
        'size': size,
        's': s,
        'fov': fov,
        'roll': roll,
        'pitch': pitch,
        'yaw': yaw,
        'xzoom': xzoom,
        'yzoom': yzoom,
        'zzoom': zzoom,
        'xpos': xpos,
        'ypos': ypos,
        'zpos': zpos,
        'length': length,
      };
}
