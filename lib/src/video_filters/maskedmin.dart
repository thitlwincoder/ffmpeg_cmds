import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Merge the second and third input stream into output stream using absolute differences between second input stream and first input stream and absolute difference between third input stream and first input stream. The picked value will be from second input stream if second absolute difference is less than first one or from third input stream otherwise.
///
/// This filter accepts the following options:
class Maskedmin extends Filter {
  /// Maskedmin
  Maskedmin({this.planes});

  /// Set which planes will be processed as bitmap, unprocessed planes will be copied from first stream. By default value 0xf, all planes will be processed.
  Object? planes;

  @override
  String get name => 'maskedmin';

  @override
  Map<String, dynamic> get options => {'planes': planes};
}
