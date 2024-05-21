import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Vignette extends Filter {
  /// Vignette
  Vignette();

  @override
  String get name => 'vignette';

  @override
  Map<String, dynamic> get options => {};
}
