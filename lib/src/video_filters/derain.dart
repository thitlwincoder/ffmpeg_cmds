import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Derain extends Filter {
  /// Derain
  Derain();

  @override
  String get name => 'derain';

  @override
  Map<String, dynamic> get options => {};
}
