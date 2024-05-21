import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Libvmaf extends Filter {
  /// Libvmaf
  Libvmaf();

  @override
  String get name => 'libvmaf';

  @override
  Map<String, dynamic> get options => {};
}
