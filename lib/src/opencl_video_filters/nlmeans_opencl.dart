import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class NlmeansOpencl extends Filter {
  /// NlmeansOpencl
  NlmeansOpencl();

  @override
  String get name => 'nlmeans_opencl';

  @override
  Map<String, dynamic> get options => {};
}
