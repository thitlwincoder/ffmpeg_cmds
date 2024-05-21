import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Multiply first audio stream with second audio stream and store result in output audio stream. Multiplication is done by multiplying each sample from first stream with sample at same position from second stream.
///
/// With this element-wise multiplication one can create amplitude fades and amplitude modulations.
class Amultiply extends Filter {
  /// Amultiply
  Amultiply();

  @override
  String get name => 'amultiply';

  @override
  Map<String, dynamic> get options => {};
}
