import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// 2D Video Oscilloscope.
///
/// Useful to measure spatial impulse, step responses, chroma delays, etc.
///
/// It accepts the following parameters:
class Oscilloscope extends Filter {
  /// Oscilloscope
  Oscilloscope({
    this.x,
    this.y,
    this.s,
    this.t,
    this.o,
    this.tx,
    this.ty,
    this.tw,
    this.th,
    this.c,
    this.g,
    this.st,
    this.sc,
  });

  /// Set scope center x position.
  Object? x;

  /// Set scope center y position.
  Object? y;

  /// Set scope size, relative to frame diagonal.
  Object? s;

  /// Set scope tilt/rotation.
  Object? t;

  /// Set trace opacity.
  Object? o;

  /// Set trace center x position.
  Object? tx;

  /// Set trace center y position.
  Object? ty;

  /// Set trace width, relative to width of frame.
  Object? tw;

  /// Set trace height, relative to height of frame.
  Object? th;

  /// Set which components to trace. By default it traces first three components.
  Object? c;

  /// Draw trace grid. By default is enabled.
  Object? g;

  /// Draw some statistics. By default is enabled.
  Object? st;

  /// Draw scope. By default is enabled.
  Object? sc;

  @override
  String get name => 'oscilloscope';

  @override
  Map<String, dynamic> get options => {
        'x': x,
        'y': y,
        's': s,
        't': t,
        'o': o,
        'tx': tx,
        'ty': ty,
        'tw': tw,
        'th': th,
        'c': c,
        'g': g,
        'st': st,
        'sc': sc,
      };
}
