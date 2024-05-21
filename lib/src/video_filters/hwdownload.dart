import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Hwdownload extends Filter {
  /// Hwdownload
  Hwdownload();

  @override
  String get name => 'hwdownload';

  @override
  Map<String, dynamic> get options => {};
}
