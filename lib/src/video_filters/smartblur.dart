import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Smartblur extends Filter {
  /// Smartblur
  Smartblur();

  @override
  String get name => 'smartblur';

  @override
  Map<String, dynamic> get options => {};
}
