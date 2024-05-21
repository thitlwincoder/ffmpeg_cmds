import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Coreimage extends Filter {
  /// Coreimage
  Coreimage();

  @override
  String get name => 'coreimage';

  @override
  Map<String, dynamic> get options => {};
}
