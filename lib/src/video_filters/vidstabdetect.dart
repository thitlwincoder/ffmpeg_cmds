import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Vidstabdetect extends Filter {
  /// Vidstabdetect
  Vidstabdetect();

  @override
  String get name => 'vidstabdetect';

  @override
  Map<String, dynamic> get options => {};
}
