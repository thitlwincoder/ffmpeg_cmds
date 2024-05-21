import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Transpose extends Filter {
  /// Transpose
  Transpose();

  @override
  String get name => 'transpose';

  @override
  Map<String, dynamic> get options => {};
}
