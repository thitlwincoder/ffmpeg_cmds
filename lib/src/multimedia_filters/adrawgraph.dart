import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Draw a graph using input audio metadata.
class Adrawgraph extends Filter {
  /// Adrawgraph
  Adrawgraph();

  @override
  String get name => 'adrawgraph';

  @override
  Map<String, dynamic> get options => {};
}
