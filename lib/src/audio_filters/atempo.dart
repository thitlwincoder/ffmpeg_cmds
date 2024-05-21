import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust audio tempo.
///
/// The filter accepts exactly one parameter, the audio tempo. If not specified then the filter will assume nominal 1.0 tempo. Tempo must be in the \[0.5, 100.0\] range.
///
/// Note that tempo greater than 2 will skip some samples rather than blend them in. If for any reason this is a concern it is always possible to daisy-chain several instances of atempo to achieve the desired product tempo.
class Atempo extends Filter {
  /// Atempo
  Atempo();

  @override
  String get name => 'atempo';

  @override
  Map<String, dynamic> get options => {};
}
