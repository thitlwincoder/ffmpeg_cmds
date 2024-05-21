import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Dilation extends Filter {
  /// Dilation
  Dilation();

  @override
  String get name => 'dilation';

  @override
  Map<String, dynamic> get options => {};
}
