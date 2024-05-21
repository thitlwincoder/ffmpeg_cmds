import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Separatefields extends Filter {
  /// Separatefields
  Separatefields();

  @override
  String get name => 'separatefields';

  @override
  Map<String, dynamic> get options => {};
}
