import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Swap two rectangular objects in video.
///
/// This filter accepts the following options:
///
/// The all options are expressions containing the following constants:
class Swaprect extends Filter {
  /// Swaprect
  Swaprect({
    this.w,
    this.h,
    this.x1,
    this.y1,
    this.x2,
    this.y2,
    this.a,
    this.sar,
    this.dar,
    this.n,
    this.t,
    this.pos,
  });

  /// The input width and height.
  Object? w;

  /// same as w / h
  Object? h;

  /// Set 1st rect x coordinate.
  Object? x1;

  /// Set 1st rect y coordinate.
  Object? y1;

  /// Set 2nd rect x coordinate.
  Object? x2;

  /// Set 2nd rect y coordinate./// All expressions are evaluated once for each frame.
  Object? y2;

  /// input sample aspect ratio
  Object? a;

  /// input display aspect ratio, it is the same as (w / h) \* sar
  Object? sar;

  /// The number of the input frame, starting from 0.
  Object? dar;

  /// The timestamp expressed in seconds. It’s NAN if the input timestamp is unknown.
  Object? n;

  /// the position in the file of the input frame, NAN if unknown; deprecated, do not use
  Object? t;

  Object? pos;

  @override
  String get name => 'swaprect';

  @override
  Map<String, dynamic> get options => {
        'w': w,
        'h': h,
        'x1': x1,
        'y1': y1,
        'x2': x2,
        'y2': y2,
        'a': a,
        'sar': sar,
        'dar': dar,
        'n': n,
        't': t,
        'pos': pos,
      };
}
