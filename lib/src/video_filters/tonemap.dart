import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Tonemap extends Filter {
  /// Tonemap
  Tonemap();

  @override
  String get name => 'tonemap';

  @override
  Map<String, dynamic> get options => {};
}
