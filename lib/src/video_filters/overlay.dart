import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Overlay extends Filter {
  /// Overlay
  Overlay();

  @override
  String get name => 'overlay';

  @override
  Map<String, dynamic> get options => {};
}
