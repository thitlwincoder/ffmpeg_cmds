import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Video data analysis filter.
///
/// This filter shows hexadecimal pixel values of part of video.
///
/// The filter accepts the following options:
class Datascope extends Filter {
  /// Datascope
  Datascope({
    this.size,
    this.s,
    this.x,
    this.y,
    this.mode,
    this.axis,
    this.opacity,
    this.format,
    this.components,
  });

  /// Set output video size.
  Object? size, s;

  /// Set x offset from where to pick pixels.
  Object? x;

  /// Set y offset from where to pick pixels.
  Object? y;

  /// Set scope mode, can be one of the following:
  /// - `mono` Draw hexadecimal pixel values with white color on black background.
  /// - `color` Draw hexadecimal pixel values with input video pixel color on black background.
  /// - `color2` Draw hexadecimal pixel values on color background picked from input video, the text color is picked in such way so its always visible.
  Object? mode;

  /// Draw rows and columns numbers on left and top of video.
  Object? axis;

  /// Set background opacity.
  Object? opacity;

  /// Set display number format. Can be `hex`, or `dec`. Default is `hex`.
  Object? format;

  /// Set pixel components to display. By default all pixel components are displayed.
  Object? components;

  @override
  String get name => 'datascope';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'x': x,
        'y': y,
        'mode': mode,
        'axis': axis,
        'opacity': opacity,
        'format': format,
        'components': components,
      };
}
