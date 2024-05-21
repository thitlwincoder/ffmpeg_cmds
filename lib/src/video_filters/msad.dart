import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Obtain the MSAD (Mean Sum of Absolute Differences) between two input videos.
///
/// This filter takes two input videos.
///
/// Both input videos must have the same resolution and pixel format for this filter to work correctly. Also it assumes that both inputs have the same number of frames, which are compared one by one.
///
/// The obtained per component, average, min and max MSAD is printed through the logging system.
///
/// The filter stores the calculated MSAD of each frame in frame metadata.
class Msad extends Filter {
  /// Msad
  Msad();

  @override
  String get name => 'msad';

  @override
  Map<String, dynamic> get options => {};
}
