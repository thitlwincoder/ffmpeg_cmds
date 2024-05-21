import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Chromakey extends Filter {
  /// Chromakey
  Chromakey();

  @override
  String get name => 'chromakey';

  @override
  Map<String, dynamic> get options => {};
}
