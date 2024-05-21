import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Alphaextract extends Filter {
  /// Alphaextract
  Alphaextract();

  @override
  String get name => 'alphaextract';

  @override
  Map<String, dynamic> get options => {};
}
