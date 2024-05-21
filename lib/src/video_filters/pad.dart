import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Pad extends Filter {
  /// Pad
  Pad();

  @override
  String get name => 'pad';

  @override
  Map<String, dynamic> get options => {};
}
