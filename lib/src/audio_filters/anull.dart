import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Pass the audio source unchanged to the output.
class Anull extends Filter {
  /// Anull
  Anull();

  @override
  String get name => 'anull';

  @override
  Map<String, dynamic> get options => {};
}
