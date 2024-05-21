import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Split single input stream into multiple streams.
///
/// This filter does opposite of concat filters.
///
/// This filter accepts the following options:
///
/// In all cases, prefixing an each segment with ’+’ will make it relative to the previous segment.
class Segment002cAsegment extends Filter {
  /// Segment002cAsegment
  Segment002cAsegment({
    this.timestamps,
    this.frames,
    this.samples,
  });

  /// Timestamps of output segments separated by ’|’. The first segment will run from the beginning of the input stream. The last segment will run until the end of the input stream
  Object? timestamps;

  /// Exact frame/sample count to split the segments.
  Object? frames, samples;

  @override
  String get name => 'segment_002c-asegment';

  @override
  Map<String, dynamic> get options =>
      {'timestamps': timestamps, 'frames': frames, 'samples': samples};
}
