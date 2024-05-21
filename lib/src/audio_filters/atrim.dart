import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Trim the input so that the output contains one continuous subpart of the input.
///
/// It accepts the following parameters:
///
/// If multiple start or end options are set, this filter tries to be greedy and keep all samples that match at least one of the specified constraints. To keep only the part that matches all the constraints at once, chain multiple atrim filters.
///
/// The defaults are such that all the input is kept. So it is possible to set e.g. just the end values to keep everything before the specified time.
///
/// Examples:
class Atrim extends Filter {
  /// Atrim
  Atrim({
    this.start,
    this.end,
    this.startPts,
    this.endPts,
    this.duration,
    this.startSample,
    this.endSample,
  });

  /// Timestamp (in seconds) of the start of the section to keep. I.e. the audio sample with the timestamp start will be the first sample in the output.
  Object? start;

  /// Specify time of the first audio sample that will be dropped, i.e. the audio sample immediately preceding the one with the timestamp end will be the last sample in the output.
  Object? end;

  /// Same as start, except this option sets the start timestamp in samples instead of seconds.
  Object? startPts;

  /// Same as end, except this option sets the end timestamp in samples instead of seconds.
  Object? endPts;

  /// The maximum duration of the output in seconds.
  Object? duration;

  /// The number of the first sample that should be output.
  Object? startSample;

  /// The number of the first sample that should be dropped.
  Object? endSample;

  @override
  String get name => 'atrim';

  @override
  Map<String, dynamic> get options => {
        'start': start,
        'end': end,
        'start_pts': startPts,
        'end_pts': endPts,
        'duration': duration,
        'start_sample': startSample,
        'end_sample': endSample,
      };
}
