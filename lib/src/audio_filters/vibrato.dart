import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Sinusoidal phase modulation.
///
/// The filter accepts the following options:
class Vibrato extends Filter {
  /// Vibrato
  Vibrato({
    this.f,
    this.d,
  });

  /// Modulation frequency in Hertz. Range is 0.1 - 20000.0. Default value is 5.0 Hz.
  Object? f;

  /// Depth of modulation as a percentage. Range is 0.0 - 1.0. Default value is 0.5.
  Object? d;

  @override
  String get name => 'vibrato';

  @override
  Map<String, dynamic> get options => {'f': f, 'd': d};
}
