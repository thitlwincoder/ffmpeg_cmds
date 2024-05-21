import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Directional blur filter.
///
/// The filter accepts the following options:
class Dblur extends Filter {
  /// Dblur
  Dblur({
    this.angle,
    this.radius,
    this.planes,
  });

  /// Set angle of directional blur. Default is `45`.
  Object? angle;

  /// Set radius of directional blur. Default is `5`.
  Object? radius;

  /// Set which planes to filter. By default all planes are filtered.
  Object? planes;

  @override
  String get name => 'dblur';

  @override
  Map<String, dynamic> get options =>
      {'angle': angle, 'radius': radius, 'planes': planes};
}
