import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Lut3d extends Filter {
  /// Lut3d
  Lut3d();

  @override
  String get name => 'lut3d';

  @override
  Map<String, dynamic> get options => {};
}
