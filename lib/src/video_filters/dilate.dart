import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Dilate extends Filter {
  /// Dilate
  Dilate();

  @override
  String get name => 'dilate';

  @override
  Map<String, dynamic> get options => {};
}
