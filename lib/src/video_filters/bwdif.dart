import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Bwdif extends Filter {
  /// Bwdif
  Bwdif();

  @override
  String get name => 'bwdif';

  @override
  Map<String, dynamic> get options => {};
}
