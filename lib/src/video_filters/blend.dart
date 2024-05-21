import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Blend extends Filter {
  /// Blend
  Blend();

  @override
  String get name => 'blend';

  @override
  Map<String, dynamic> get options => {};
}
