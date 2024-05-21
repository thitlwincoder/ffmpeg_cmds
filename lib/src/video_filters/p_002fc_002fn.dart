import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// We assume the following telecined stream:
///
/// The numbers correspond to the progressive frame the fields relate to. Here, the first two frames are progressive, the 3rd and 4th are combed, and so on.
class P002fc002fn extends Filter {
  /// P002fc002fn
  P002fc002fn();

  @override
  String get name => 'p_002fc_002fn';

  @override
  Map<String, dynamic> get options => {};
}
