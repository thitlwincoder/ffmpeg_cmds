import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Obtain the average VMAF motion score of a video. It is one of the component metrics of VMAF.
///
/// The obtained average motion score is printed through the logging system.
///
/// The filter accepts the following options:
///
/// Example:
class Vmafmotion extends Filter {
  /// Vmafmotion
  Vmafmotion({this.statsFile});

  /// If specified, the filter will use the named file to save the motion score of each frame with respect to the previous frame. When filename equals "-" the data is sent to standard output.
  Object? statsFile;

  @override
  String get name => 'vmafmotion';

  @override
  Map<String, dynamic> get options => {'stats_file': statsFile};
}
