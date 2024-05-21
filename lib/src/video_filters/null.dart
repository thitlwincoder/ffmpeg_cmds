import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pass the video source unchanged to the output.
class Null extends Filter {
  /// Null
  Null();

  @override
  String get name => 'null';

  @override
  Map<String, dynamic> get options => {};
}
