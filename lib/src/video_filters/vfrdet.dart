import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect variable frame rate video.
///
/// This filter tries to detect if the input is variable or constant frame rate.
///
/// At end it will output number of frames detected as having variable delta pts, and ones with constant delta pts. If there was frames with variable delta, than it will also show min, max and average delta encountered.
class Vfrdet extends Filter {
  /// Vfrdet
  Vfrdet();

  @override
  String get name => 'vfrdet';

  @override
  Map<String, dynamic> get options => {};
}
