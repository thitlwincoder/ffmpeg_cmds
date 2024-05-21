import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Alphamerge extends Filter {
  /// Alphamerge
  Alphamerge();

  @override
  String get name => 'alphamerge';

  @override
  Map<String, dynamic> get options => {};
}
