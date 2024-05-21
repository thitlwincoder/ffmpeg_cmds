import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reorder and/or duplicate and/or drop video frames.
///
/// It accepts the following parameters:
///
/// The first frame has the index 0. The default is to keep the input unchanged.
class Shuffleframes extends Filter {
  /// Shuffleframes
  Shuffleframes({this.mapping});

  /// Set the destination indexes of input frames. This is space or ’|’ separated list of indexes that maps input frames to output frames. Number of indexes also sets maximal value that each index may have. ’-1’ index have special meaning and that is to drop frame.
  Object? mapping;

  @override
  String get name => 'shuffleframes';

  @override
  Map<String, dynamic> get options => {'mapping': mapping};
}
