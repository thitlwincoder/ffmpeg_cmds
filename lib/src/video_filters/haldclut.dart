import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Haldclut extends Filter {
  /// Haldclut
  Haldclut();

  @override
  String get name => 'haldclut';

  @override
  Map<String, dynamic> get options => {};
}
