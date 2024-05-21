import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Display sample values of color channels. Mainly useful for checking color and levels. Minimum supported resolution is 640x480.
///
/// The filters accept the following options:
class Pixscope extends Filter {
  /// Pixscope
  Pixscope({
    this.x,
    this.y,
    this.w,
    this.h,
    this.o,
    this.wx,
    this.wy,
  });

  /// Set scope X position, relative offset on X axis.
  Object? x;

  /// Set scope Y position, relative offset on Y axis.
  Object? y;

  /// Set scope width.
  Object? w;

  /// Set scope height.
  Object? h;

  /// Set window opacity. This window also holds statistics about pixel area.
  Object? o;

  /// Set window X position, relative offset on X axis.
  Object? wx;

  /// Set window Y position, relative offset on Y axis.
  Object? wy;

  @override
  String get name => 'pixscope';

  @override
  Map<String, dynamic> get options =>
      {'x': x, 'y': y, 'w': w, 'h': h, 'o': o, 'wx': wx, 'wy': wy};
}
