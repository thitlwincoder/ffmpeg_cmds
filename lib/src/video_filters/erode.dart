import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Erode extends Filter {
  /// Erode
  Erode();

  @override
  String get name => 'erode';

  @override
  Map<String, dynamic> get options => {};
}
