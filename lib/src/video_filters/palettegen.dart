import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Palettegen extends Filter {
  /// Palettegen
  Palettegen();

  @override
  String get name => 'palettegen';

  @override
  Map<String, dynamic> get options => {};
}
