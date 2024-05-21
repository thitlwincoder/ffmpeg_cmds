import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This filter accepts the following parameters:
///
/// Each of them specifies the expression to use for computing the lookup table for the corresponding pixel component values.
///
/// The expressions can contain the following constants:
///
/// All expressions default to "x".
class Lut2002cTlut2 extends Filter {
  /// Lut2002cTlut2
  Lut2002cTlut2({
    this.c0,
    this.c1,
    this.c2,
    this.c3,
    this.d,
    this.w,
    this.h,
    this.x,
    this.y,
    this.bdx,
    this.bdy,
  });

  /// set first pixel component expression
  Object? c0;

  /// set second pixel component expression
  Object? c1;

  /// set third pixel component expression
  Object? c2;

  /// set fourth pixel component expression, corresponds to the alpha component
  Object? c3;

  /// set output bit depth, only available for `lut2` filter. By default is 0, which means bit depth is automatically picked from first input format.
  Object? d;

  /// The input width and height.
  Object? w;

  /// The first input value for the pixel component.
  Object? h;

  /// The second input value for the pixel component.
  Object? x;

  /// The first input video bit depth.
  Object? y;

  /// The second input video bit depth.
  Object? bdx;

  Object? bdy;

  @override
  String get name => 'lut2_002c-tlut2';

  @override
  Map<String, dynamic> get options => {
        'c0': c0,
        'c1': c1,
        'c2': c2,
        'c3': c3,
        'd': d,
        'w': w,
        'h': h,
        'x': x,
        'y': y,
        'bdx': bdx,
        'bdy': bdy,
      };
}
