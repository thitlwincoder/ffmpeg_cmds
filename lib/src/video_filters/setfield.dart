import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Setfield extends Filter {
  /// Setfield
  Setfield();

  @override
  String get name => 'setfield';

  @override
  Map<String, dynamic> get options => {};
}
