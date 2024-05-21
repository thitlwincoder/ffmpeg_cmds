import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A color constancy filter that applies color correction based on the grayworld assumption
///
/// The algorithm uses linear light, so input data should be linearized beforehand (and possibly correctly tagged).
class Grayworld extends Filter {
  /// Grayworld
  Grayworld();

  @override
  String get name => 'grayworld';

  @override
  Map<String, dynamic> get options => {};
}
