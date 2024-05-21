import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Hwupload extends Filter {
  /// Hwupload
  Hwupload();

  @override
  String get name => 'hwupload';

  @override
  Map<String, dynamic> get options => {};
}
