import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Nlmeans extends Filter {
  /// Nlmeans
  Nlmeans();

  @override
  String get name => 'nlmeans';

  @override
  Map<String, dynamic> get options => {};
}
