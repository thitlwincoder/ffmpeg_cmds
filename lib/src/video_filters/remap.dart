import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remap pixels using 2nd: Xmap and 3rd: Ymap input video stream.
///
/// Destination pixel at position (X, Y) will be picked from source (x, y) position where x = Xmap(X, Y) and y = Ymap(X, Y). If mapping values are out of range, zero value for pixel will be used for destination pixel.
///
/// Xmap and Ymap input video streams must be of same dimensions. Output video stream will have Xmap/Ymap video stream dimensions. Xmap and Ymap input video streams are 16bit depth, single channel.
class Remap extends Filter {
  /// Remap
  Remap({
    this.format,
    this.fill,
  });

  /// Specify pixel format of output from this filter. Can be `color` or `gray`. Default is `color`.
  Object? format;

  /// Specify the color of the unmapped pixels. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax). Default color is `black`.
  Object? fill;

  @override
  String get name => 'remap';

  @override
  Map<String, dynamic> get options => {'format': format, 'fill': fill};
}
