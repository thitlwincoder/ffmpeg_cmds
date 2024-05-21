import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Resample the input audio to the specified parameters, using the libswresample library. If none are specified then the filter will automatically convert between its input and output.
///
/// This filter is also able to stretch/squeeze the audio data to make it match the timestamps or to inject silence / cut out audio to make it match the timestamps, do a combination of both or do neither.
class Aresample1 extends Filter {
  /// Aresample1
  Aresample1();

  @override
  String get name => 'aresample-1';

  @override
  Map<String, dynamic> get options => {};
}
