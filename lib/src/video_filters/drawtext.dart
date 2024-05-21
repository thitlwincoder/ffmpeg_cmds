import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Drawtext extends Filter {
  /// Drawtext
  Drawtext();

  @override
  String get name => 'drawtext';

  @override
  Map<String, dynamic> get options => {};
}
