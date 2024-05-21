import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Flood area with values of same pixel components with another values.
///
/// It accepts the following options:
class Floodfill extends Filter {
  /// Floodfill
  Floodfill({
    this.x,
    this.y,
    this.s0,
    this.s1,
    this.s2,
    this.s3,
    this.d0,
    this.d1,
    this.d2,
    this.d3,
  });

  /// Set pixel x coordinate.
  Object? x;

  /// Set pixel y coordinate.
  Object? y;

  /// Set source #0 component value.
  Object? s0;

  /// Set source #1 component value.
  Object? s1;

  /// Set source #2 component value.
  Object? s2;

  /// Set source #3 component value.
  Object? s3;

  /// Set destination #0 component value.
  Object? d0;

  /// Set destination #1 component value.
  Object? d1;

  /// Set destination #2 component value.
  Object? d2;

  /// Set destination #3 component value.
  Object? d3;

  @override
  String get name => 'floodfill';

  @override
  Map<String, dynamic> get options => {
        'x': x,
        'y': y,
        's0': s0,
        's1': s1,
        's2': s2,
        's3': s3,
        'd0': d0,
        'd1': d1,
        'd2': d2,
        'd3': d3,
      };
}
