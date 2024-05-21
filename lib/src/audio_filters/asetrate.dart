import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set the sample rate without altering the PCM data. This will result in a change of speed and pitch.
///
/// The filter accepts the following options:
class Asetrate extends Filter {
  /// Asetrate
  Asetrate({
    this.sampleRate,
    this.r,
  });

  Object? sampleRate, r;

  @override
  String get name => 'asetrate';

  @override
  Map<String, dynamic> get options => {'sample_rate': sampleRate, 'r': r};
}
