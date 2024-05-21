import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Concatenate audio and video streams, joining them together one after the other.
///
/// The filter works on segments of synchronized video and audio streams. All segments must have the same number of streams of each type, and that will also be the number of streams at output.
///
/// The filter accepts the following options:
///
/// Related streams do not always have exactly the same duration, for various reasons including codec frame size or sloppy authoring. For that reason, related synchronized streams (e.g. a video and its audio track) should be concatenated at once. The concat filter will use the duration of the longest stream in each segment (except the last one), and if necessary pad shorter audio streams with silence.
///
/// For this filter to work correctly, all segments must start at timestamp 0.
///
/// All corresponding streams must have the same parameters in all segments; the filtering system will automatically select a common pixel format for video streams, and a common sample format, sample rate and channel layout for audio streams, but other settings, such as resolution, must be converted explicitly by the user.
///
/// Different frame rates are acceptable but will result in variable frame rate at output; be sure to configure the output file to handle it.
class Concat extends Filter {
  /// Concat
  Concat({
    this.n,
    this.v,
    this.a,
    this.unsafe,
  });

  /// Set the number of segments. Default is 2.
  Object? n;

  /// Set the number of output video streams, that is also the number of video streams in each segment. Default is 1.
  Object? v;

  /// Set the number of output audio streams, that is also the number of audio streams in each segment. Default is 0.
  Object? a;

  /// Activate unsafe mode: do not fail if segments have a different format.
  Object? unsafe;

  @override
  String get name => 'concat';

  @override
  Map<String, dynamic> get options =>
      {'n': n, 'v': v, 'a': a, 'unsafe': unsafe};
}
