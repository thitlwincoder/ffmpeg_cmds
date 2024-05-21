import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Blockdetect extends Filter {
  /// Blockdetect
  Blockdetect();

  @override
  String get name => 'blockdetect';

  @override
  Map<String, dynamic> get options => {};
}
