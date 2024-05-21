import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Signalstats extends Filter {
  /// Signalstats
  Signalstats();

  @override
  String get name => 'signalstats';

  @override
  Map<String, dynamic> get options => {};
}
