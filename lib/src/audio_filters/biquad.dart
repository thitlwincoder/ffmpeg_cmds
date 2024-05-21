import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Biquad extends Filter {
  /// Biquad
  Biquad();

  @override
  String get name => 'biquad';

  @override
  Map<String, dynamic> get options => {};
}
