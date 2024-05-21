import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Trim the input so that the output contains one continuous subpart of the input.
///
/// It accepts the following parameters:
///
/// If multiple start or end options are set, this filter tries to be greedy and keep all the frames that match at least one of the specified constraints. To keep only the part that matches all the constraints at once, chain multiple trim filters.
///
/// The defaults are such that all the input is kept. So it is possible to set e.g. just the end values to keep everything before the specified time.
///
/// Examples:
class Trim extends Filter {
  /// Trim
  Trim({
    this.start,
    this.end,
    this.startPts,
    this.endPts,
    this.duration,
    this.startFrame,
    this.endFrame,
  });

  /// Specify the time of the start of the kept section, i.e. the frame with the timestamp start will be the first frame in the output.
  Object? start;

  /// Specify the time of the first frame that will be dropped, i.e. the frame immediately preceding the one with the timestamp end will be the last frame in the output.
  Object? end;

  /// This is the same as start, except this option sets the start timestamp in timebase units instead of seconds.
  Object? startPts;

  /// This is the same as end, except this option sets the end timestamp in timebase units instead of seconds.
  Object? endPts;

  /// The maximum duration of the output in seconds.
  Object? duration;

  /// The number of the first frame that should be passed to the output.
  Object? startFrame;

  /// The number of the first frame that should be dropped.
  Object? endFrame;

  @override
  String get name => 'trim';

  @override
  Map<String, dynamic> get options => {
        'start': start,
        'end': end,
        'start_pts': startPts,
        'end_pts': endPts,
        'duration': duration,
        'start_frame': startFrame,
        'end_frame': endFrame,
      };
}
