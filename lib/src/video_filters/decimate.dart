import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Decimate extends Filter {
  /// Decimate
  Decimate();

  @override
  String get name => 'decimate';

  @override
  Map<String, dynamic> get options => {};
}
