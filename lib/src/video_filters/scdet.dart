import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Scdet extends Filter {
  /// Scdet
  Scdet();

  @override
  String get name => 'scdet';

  @override
  Map<String, dynamic> get options => {};
}
