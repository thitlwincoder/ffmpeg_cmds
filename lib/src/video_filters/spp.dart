import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Spp extends Filter {
  /// Spp
  Spp();

  @override
  String get name => 'spp';

  @override
  Map<String, dynamic> get options => {};
}
