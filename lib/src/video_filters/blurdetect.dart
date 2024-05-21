import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Blurdetect extends Filter {
  /// Blurdetect
  Blurdetect();

  @override
  String get name => 'blurdetect';

  @override
  Map<String, dynamic> get options => {};
}
