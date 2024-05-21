import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Psychoacoustic clipper to input audio stream.
///
/// The filter accepts the following options:
class Apsyclip extends Filter {
  /// Apsyclip
  Apsyclip({
    this.levelIn,
    this.levelOut,
    this.clip,
    this.diff,
    this.adaptive,
    this.iterations,
    this.level,
  });

  /// Set input gain. By default it is 1. Range is \[0.015625 - 64\].
  Object? levelIn;

  /// Set output gain. By default it is 1. Range is \[0.015625 - 64\].
  Object? levelOut;

  /// Set the clipping start value. Default value is 0dBFS or 1.
  Object? clip;

  /// Output only difference samples, useful to hear introduced distortions. By default is disabled.
  Object? diff;

  /// Set strength of adaptive distortion applied. Default value is 0.5. Allowed range is from 0 to 1.
  Object? adaptive;

  /// Set number of iterations of psychoacoustic clipper. Allowed range is from 1 to 20. Default value is 10.
  Object? iterations;

  /// Auto level output signal. Default is disabled. This normalizes audio back to 0dBFS if enabled.
  Object? level;

  @override
  String get name => 'apsyclip';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'level_out': levelOut,
        'clip': clip,
        'diff': diff,
        'adaptive': adaptive,
        'iterations': iterations,
        'level': level,
      };
}
