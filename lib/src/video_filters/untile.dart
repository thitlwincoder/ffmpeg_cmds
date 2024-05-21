import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Untile extends Filter {
  /// Untile
  Untile();

  @override
  String get name => 'untile';

  @override
  Map<String, dynamic> get options => {};
}
