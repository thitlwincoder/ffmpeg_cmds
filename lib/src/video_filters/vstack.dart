import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Vstack extends Filter {
  /// Vstack
  Vstack();

  @override
  String get name => 'vstack';

  @override
  Map<String, dynamic> get options => {};
}
