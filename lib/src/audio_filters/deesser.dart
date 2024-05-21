import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply de-essing to the audio samples.
class Deesser extends Filter {
  /// Deesser
  Deesser({
    this.i,
    this.m,
    this.f,
    this.s,
  });

  /// Set intensity for triggering de-essing. Allowed range is from 0 to 1. Default is 0.
  Object? i;

  /// Set amount of ducking on treble part of sound. Allowed range is from 0 to 1. Default is 0.5.
  Object? m;

  /// How much of original frequency content to keep when de-essing. Allowed range is from 0 to 1. Default is 0.5.
  Object? f;

  /// Set the output mode./// It accepts the following values:
  /// - `i` Pass input unchanged.
  /// - `o` Pass ess filtered out.
  /// - `e` Pass only ess.Default value is o.
  Object? s;

  @override
  String get name => 'deesser';

  @override
  Map<String, dynamic> get options => {'i': i, 'm': m, 'f': f, 's': s};
}
