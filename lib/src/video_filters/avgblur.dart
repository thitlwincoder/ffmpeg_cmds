import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply average blur filter.
///
/// The filter accepts the following options:
class Avgblur extends Filter {
  /// Avgblur
  Avgblur({
    this.sizeX,
    this.planes,
    this.sizeY,
  });

  /// Set horizontal radius size.
  Object? sizeX;

  /// Set which planes to filter. By default all planes are filtered.
  Object? planes;

  /// Set vertical radius size, if zero it will be same as `sizeX`. Default is `0`.
  Object? sizeY;

  @override
  String get name => 'avgblur';

  @override
  Map<String, dynamic> get options =>
      {'sizeX': sizeX, 'planes': planes, 'sizeY': sizeY};
}
