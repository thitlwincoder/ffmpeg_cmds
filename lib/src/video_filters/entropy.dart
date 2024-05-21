import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Measure graylevel entropy in histogram of color channels of video frames.
///
/// It accepts the following parameters:
class Entropy extends Filter {
  /// Entropy
  Entropy({this.mode});

  /// Can be either normal or diff. Default is normal./// diff mode measures entropy of histogram delta values, absolute differences between neighbour histogram values.
  Object? mode;

  @override
  String get name => 'entropy';

  @override
  Map<String, dynamic> get options => {'mode': mode};
}
