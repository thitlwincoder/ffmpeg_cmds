import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pad the end of an audio stream with silence.
///
/// A description of the accepted options follows.
class Apad extends Filter {
  /// Apad
  Apad({
    this.packetSize,
    this.padLen,
    this.wholeLen,
    this.padDur,
    this.wholeDur,
  });

  /// Set silence packet size. Default value is 4096.
  Object? packetSize;

  /// Set the number of samples of silence to add to the end. After the value is reached, the stream is terminated. This option is mutually exclusive with /// whole_len.
  Object? padLen;

  /// Set the minimum total number of samples in the output audio stream. If the value is longer than the input audio length, silence is added to the end, until the value is reached. This option is mutually exclusive with /// pad_len.
  Object? wholeLen;

  /// Specify the duration of samples of silence to add. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax. Used only if set to non-negative value.
  Object? padDur;

  /// Specify the minimum total duration in the output audio stream. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax. Used only if set to non-negative value. If the value is longer than the input audio length, silence is added to the end, until the value is reached. This option is mutually exclusive with /// pad_dur
  Object? wholeDur;

  @override
  String get name => 'apad';

  @override
  Map<String, dynamic> get options => {
        'packet_size': packetSize,
        'pad_len': padLen,
        'whole_len': wholeLen,
        'pad_dur': padDur,
        'whole_dur': wholeDur,
      };
}
