import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Subtitles extends Filter {
  /// Subtitles
  Subtitles();

  @override
  String get name => 'subtitles';

  @override
  Map<String, dynamic> get options => {};
}
