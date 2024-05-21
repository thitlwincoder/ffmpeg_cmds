import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert the audio sample format, sample rate and channel layout. It is not meant to be used directly.
class Resample extends Filter {
  /// Resample
  Resample();

  @override
  String get name => 'resample';

  @override
  Map<String, dynamic> get options => {};
}
