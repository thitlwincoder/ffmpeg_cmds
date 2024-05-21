import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Curves extends Filter {
  /// Curves
  Curves();

  @override
  String get name => 'curves';

  @override
  Map<String, dynamic> get options => {};
}
