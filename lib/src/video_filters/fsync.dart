import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Fsync extends Filter {
  /// Fsync
  Fsync();

  @override
  String get name => 'fsync';

  @override
  Map<String, dynamic> get options => {};
}
