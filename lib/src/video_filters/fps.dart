import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Fps extends Filter {
  /// Fps
  Fps();

  @override
  String get name => 'fps';

  @override
  Map<String, dynamic> get options => {};
}
