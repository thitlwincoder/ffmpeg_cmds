import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Hstack extends Filter {
  /// Hstack
  Hstack();

  @override
  String get name => 'hstack';

  @override
  Map<String, dynamic> get options => {};
}
