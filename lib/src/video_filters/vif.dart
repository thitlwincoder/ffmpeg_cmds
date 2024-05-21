import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Obtain the average VIF (Visual Information Fidelity) between two input videos.
///
/// This filter takes two input videos.
///
/// Both input videos must have the same resolution and pixel format for this filter to work correctly. Also it assumes that both inputs have the same number of frames, which are compared one by one.
///
/// The obtained average VIF score is printed through the logging system.
///
/// The filter stores the calculated VIF score of each frame.
class Vif extends Filter {
  /// Vif
  Vif();

  @override
  String get name => 'vif';

  @override
  Map<String, dynamic> get options => {};
}
