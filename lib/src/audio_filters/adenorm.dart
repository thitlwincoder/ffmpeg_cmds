import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remedy denormals in audio by adding extremely low-level noise.
///
/// This filter shall be placed before any filter that can produce denormals.
///
/// A description of the accepted parameters follows.
class Adenorm extends Filter {
  /// Adenorm
  Adenorm({
    this.level,
    this.type,
  });

  /// Set level of added noise in dB. Default is `-351`. Allowed range is from -451 to -90.
  Object? level;

  /// Set type of added noise.
  /// - `dc` Add DC signal.
  /// - `ac` Add AC signal.
  /// - `square` Add square signal.
  /// - `pulse` Add pulse signal.

  /// Default is `dc`.
  Object? type;

  @override
  String get name => 'adenorm';

  @override
  Map<String, dynamic> get options => {'level': level, 'type': type};
}
