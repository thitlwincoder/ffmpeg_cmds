import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate an identity Hald CLUT stream altered with various effects:
///
/// Note: make sure you use a lossless codec.
class HaldCLUTVideoStream extends Filter {
  /// HaldCLUTVideoStream
  HaldCLUTVideoStream();

  @override
  String get name => 'Hald-CLUT-video-stream';

  @override
  Map<String, dynamic> get options => {};
}
