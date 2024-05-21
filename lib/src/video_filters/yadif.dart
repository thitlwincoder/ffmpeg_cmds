import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Yadif extends Filter {
  /// Yadif
  Yadif();

  @override
  String get name => 'yadif';

  @override
  Map<String, dynamic> get options => {};
}
