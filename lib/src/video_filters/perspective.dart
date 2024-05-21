import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Correct perspective of video not recorded perpendicular to the screen.
///
/// A description of the accepted parameters follows.
class Perspective extends Filter {
  /// Perspective
  Perspective({
    this.x0,
    this.y0,
    this.x1,
    this.y1,
    this.x2,
    this.y2,
    this.x3,
    this.y3,
    this.interpolation,
    this.sense,
    this.eval,
  });

  /// Set coordinates expression for top left, top right, bottom left and bottom right corners. Default values are `0:0:W:0:0:H:W:H` with which perspective will remain unchanged. If the `sense` option is set to `source`, then the specified points will be sent to the corners of the destination. If the `sense` option is set to `destination`, then the corners of the source will be sent to the specified coordinates./// The expressions can use the following variables:
  /// - `W`
  /// - `H` the width and height of video frame.
  /// - `in` Input frame count.
  /// - `on` Output frame count.
  Object? x0;

  /// Set interpolation for perspective correction./// It accepts the following values:
  /// - `linear`
  /// - `cubic`
  /// Default value is ‘/// linear’.
  Object? y0;

  /// Set interpretation of coordinate options./// It accepts the following values:
  /// - `0, source` Send point in the source specified by the given coordinates to the corners of the destination.
  /// - `1, destination` Send the corners of the source to the point in the destination specified by the given coordinates.Default value is ‘source’.
  Object? x1;

  /// Set when the expressions for coordinates /// x0,y0,...x3,y3 are evaluated./// It accepts the following values:
  /// - `init` only evaluate expressions once during the filter initialization or when a command is processed
  /// - `frame` evaluate expressions for each incoming frame

  /// Default value is ‘/// init’.
  Object? y1;

  Object? x2;

  Object? y2;

  Object? x3;

  Object? y3;

  Object? interpolation;

  Object? sense;

  Object? eval;

  @override
  String get name => 'perspective';

  @override
  Map<String, dynamic> get options => {
        'x0': x0,
        'y0': y0,
        'x1': x1,
        'y1': y1,
        'x2': x2,
        'y2': y2,
        'x3': x3,
        'y3': y3,
        'interpolation': interpolation,
        'sense': sense,
        'eval': eval,
      };
}
