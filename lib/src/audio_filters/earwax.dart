import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Make audio easier to listen to on headphones.
///
/// This filter adds ‘cues’ to 44.1kHz stereo (i.e. audio CD format) audio so that when listened to on headphones the stereo image is moved from inside your head (standard for headphones) to outside and in front of the listener (standard for speakers).
///
/// Ported from SoX.
class Earwax extends Filter {
  /// Earwax
  Earwax();

  @override
  String get name => 'earwax';

  @override
  Map<String, dynamic> get options => {};
}
