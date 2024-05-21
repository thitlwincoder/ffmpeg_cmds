import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Format extends Filter {
  /// Format
  Format();

  @override
  String get name => 'format';

  @override
  Map<String, dynamic> get options => {};
}
