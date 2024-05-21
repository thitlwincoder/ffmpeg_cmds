import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Histogram extends Filter {
  /// Histogram
  Histogram();

  @override
  String get name => 'histogram';

  @override
  Map<String, dynamic> get options => {};
}
