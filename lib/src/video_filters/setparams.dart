import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Setparams extends Filter {
  /// Setparams
  Setparams();

  @override
  String get name => 'setparams';

  @override
  Map<String, dynamic> get options => {};
}
