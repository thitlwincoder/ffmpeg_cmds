import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Erosion extends Filter {
  /// Erosion
  Erosion();

  @override
  String get name => 'erosion';

  @override
  Map<String, dynamic> get options => {};
}
