import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate an audio signal made of a sine wave with amplitude 1/8.
///
/// The audio signal is bit-exact.
///
/// The filter accepts the following options:
class Sine extends Filter {
  /// Sine
  Sine({
    this.frequency,
    this.f,
    this.beepFactor,
    this.b,
    this.sampleRate,
    this.r,
    this.duration,
    this.d,
    this.samplesPerFrame,
  });

  Object? frequency, f;

  Object? beepFactor, b;

  Object? sampleRate, r;

  Object? duration, d;

  /// Set the number of samples per output frame./// The expression can contain the following constants:
  /// - `n` The (sequential) number of the output audio frame, starting from 0.
  /// - `pts` The PTS (Presentation TimeStamp) of the output audio frame, expressed in TB units.
  /// - `t` The PTS of the output audio frame, expressed in seconds.
  /// - `TB` The timebase of the output audio frames.

  /// Default is `1024`.
  Object? samplesPerFrame;

  @override
  String get name => 'sine';

  @override
  Map<String, dynamic> get options => {
        'frequency': frequency,
        'f': f,
        'beep_factor': beepFactor,
        'b': b,
        'sample_rate': sampleRate,
        'r': r,
        'duration': duration,
        'd': d,
        'samples_per_frame': samplesPerFrame,
      };
}
