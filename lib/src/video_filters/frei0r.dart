import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Frei0r extends Filter {
  /// Frei0r
  Frei0r();

  @override
  String get name => 'frei0r';

  @override
  Map<String, dynamic> get options => {};
}
