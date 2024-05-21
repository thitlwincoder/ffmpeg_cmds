import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Compute derivative/integral of audio stream.
///
/// Applying both filters one after another produces original audio.
class Aderivative002cAintegral extends Filter {
  /// Aderivative002cAintegral
  Aderivative002cAintegral();

  @override
  String get name => 'aderivative_002c-aintegral';

  @override
  Map<String, dynamic> get options => {};
}
