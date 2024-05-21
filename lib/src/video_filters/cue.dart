import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Cue extends Filter {
  /// Cue
  Cue();

  @override
  String get name => 'cue';

  @override
  Map<String, dynamic> get options => {};
}
