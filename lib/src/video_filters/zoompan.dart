import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Zoom & Pan effect.
class ZoomPan implements Filter {
  /// ZoomPan
  ZoomPan({
    this.zoom,
    this.z,
    this.x,
    this.y,
    this.d,
    this.s,
    this.fps,
  });

  /// Set the zoom expression. Range is 1-10. Default is `1`.
  int? zoom, z;

  /// Set the x and y expression. Default is `0`.
  int? x, y;

  /// Set the duration expression in number of frames. This sets for how many number of frames effect will last for single input image. Default is `90`.
  int? d;

  /// Set the output image size, default is `hd720`.
  String? s;

  /// Set the output frame rate, default is `25`.
  String? fps;

  @override
  String get name => 'zoompan';

  @override
  Map<String, dynamic> get options => {
        'zoom': zoom,
        'z': z,
        'x': x,
        'y': y,
        'd': d,
        's': s,
        'fps': fps,
      };
}
