import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Graphmonitor extends Filter {
  /// Graphmonitor
  Graphmonitor();

  @override
  String get name => 'graphmonitor';

  @override
  Map<String, dynamic> get options => {};
}
