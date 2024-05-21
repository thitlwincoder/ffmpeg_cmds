import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply pixelization to video stream.
///
/// The filter accepts the following options:
class Pixelize extends Filter {
  /// Pixelize
  Pixelize({
    this.width,
    this.w,
    this.height,
    this.h,
    this.mode,
    this.m,
    this.planes,
    this.p,
  });

  /// Set block dimensions that will be used for pixelization. Default value is `16`.
  Object? width, w;

  /// Set the mode of pixelization used./// Possible values are:
  /// - `avg`
  /// - `min`
  /// - `max`
  /// Default value is `avg`.
  Object? height, h;

  /// Set what planes to filter. Default is to filter all planes.
  Object? mode, m;

  Object? planes, p;

  @override
  String get name => 'pixelize';

  @override
  Map<String, dynamic> get options => {
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'mode': mode,
        'm': m,
        'planes': planes,
        'p': p,
      };
}
