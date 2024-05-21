import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Copy the input video source unchanged to the output. This is mainly useful for testing purposes.
class Copy extends Filter {
  /// Copy
  Copy();

  @override
  String get name => 'copy';

  @override
  Map<String, dynamic> get options => {};
}
