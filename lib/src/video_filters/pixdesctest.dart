import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pixel format descriptor test filter, mainly useful for internal testing. The output video should be equal to the input video.
///
/// For example:
///
/// can be used to test the monowhite pixel format descriptor definition.
class Pixdesctest extends Filter {
  /// Pixdesctest
  Pixdesctest();

  @override
  String get name => 'pixdesctest';

  @override
  Map<String, dynamic> get options => {};
}
