import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Scale extends Filter {
  /// Scale
  Scale();

  @override
  String get name => 'scale';

  @override
  Map<String, dynamic> get options => {};
}
