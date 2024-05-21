import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Selectivecolor extends Filter {
  /// Selectivecolor
  Selectivecolor();

  @override
  String get name => 'selectivecolor';

  @override
  Map<String, dynamic> get options => {};
}
