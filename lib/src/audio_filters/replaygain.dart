import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following exported read-only options:
class Replaygain extends Filter {
  /// Replaygain
  Replaygain({
    this.trackGain,
    this.trackPeak,
  });

  /// Exported track gain in dB at end of stream.
  Object? trackGain;

  /// Exported track peak at end of stream.
  Object? trackPeak;

  @override
  String get name => 'replaygain';

  @override
  Map<String, dynamic> get options =>
      {'track_gain': trackGain, 'track_peak': trackPeak};
}
