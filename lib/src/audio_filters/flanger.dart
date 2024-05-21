import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a flanging effect to the audio.
///
/// The filter accepts the following options:
class Flanger extends Filter {
  /// Flanger
  Flanger({
    this.delay,
    this.depth,
    this.regen,
    this.width,
    this.speed,
    this.shape,
    this.phase,
    this.interp,
  });

  /// Set base delay in milliseconds. Range from 0 to 30. Default value is 0.
  Object? delay;

  /// Set added sweep delay in milliseconds. Range from 0 to 10. Default value is 2.
  Object? depth;

  /// Set percentage regeneration (delayed signal feedback). Range from -95 to 95. Default value is 0.
  Object? regen;

  /// Set percentage of delayed signal mixed with original. Range from 0 to 100. Default value is 71.
  Object? width;

  /// Set sweeps per second (Hz). Range from 0.1 to 10. Default value is 0.5.
  Object? speed;

  /// Set swept wave shape, can be triangular or sinusoidal. Default value is sinusoidal.
  Object? shape;

  /// Set swept wave percentage-shift for multi channel. Range from 0 to 100. Default value is 25.
  Object? phase;

  /// Set delay-line interpolation, linear or quadratic. Default is linear.
  Object? interp;

  @override
  String get name => 'flanger';

  @override
  Map<String, dynamic> get options => {
        'delay': delay,
        'depth': depth,
        'regen': regen,
        'width': width,
        'speed': speed,
        'shape': shape,
        'phase': phase,
        'interp': interp,
      };
}
