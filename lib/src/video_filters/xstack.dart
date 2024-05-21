import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Xstack extends Filter {
  /// Xstack
  Xstack();

  @override
  String get name => 'xstack';

  @override
  Map<String, dynamic> get options => {};
}
