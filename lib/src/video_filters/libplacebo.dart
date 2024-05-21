import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Libplacebo extends Filter {
  /// Libplacebo
  Libplacebo();

  @override
  String get name => 'libplacebo';

  @override
  Map<String, dynamic> get options => {};
}
