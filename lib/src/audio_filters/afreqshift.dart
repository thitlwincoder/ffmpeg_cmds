import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply frequency shift to input audio samples.
///
/// The filter accepts the following options:
class Afreqshift extends Filter {
  /// Afreqshift
  Afreqshift({
    this.shift,
    this.level,
    this.order,
  });

  /// Specify frequency shift. Allowed range is -INT\_MAX to INT\_MAX. Default value is 0.0.
  Object? shift;

  /// Set output gain applied to final output. Allowed range is from 0.0 to 1.0. Default value is 1.0.
  Object? level;

  /// Set filter order used for filtering. Allowed range is from 1 to 16. Default value is 8.
  Object? order;

  @override
  String get name => 'afreqshift';

  @override
  Map<String, dynamic> get options =>
      {'shift': shift, 'level': level, 'order': order};
}
