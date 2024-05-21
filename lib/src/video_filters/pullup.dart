import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Pullup extends Filter {
  /// Pullup
  Pullup();

  @override
  String get name => 'pullup';

  @override
  Map<String, dynamic> get options => {};
}
