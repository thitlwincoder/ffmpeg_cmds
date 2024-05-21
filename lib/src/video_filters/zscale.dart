import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Zscale extends Filter {
  /// Zscale
  Zscale();

  @override
  String get name => 'zscale';

  @override
  Map<String, dynamic> get options => {};
}
