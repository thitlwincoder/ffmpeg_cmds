import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Drawgraph extends Filter {
  /// Drawgraph
  Drawgraph();

  @override
  String get name => 'drawgraph';

  @override
  Map<String, dynamic> get options => {};
}
