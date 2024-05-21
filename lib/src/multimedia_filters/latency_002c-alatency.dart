import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure filtering latency.
///
/// Report previous filter filtering latency, delay in number of audio samples for audio filters or number of video frames for video filters.
///
/// On end of input stream, filter will report min and max measured latency for previous running filter in filtergraph.
class Latency002cAlatency extends Filter {
  /// Latency002cAlatency
  Latency002cAlatency();

  @override
  String get name => 'latency_002c-alatency';

  @override
  Map<String, dynamic> get options => {};
}
