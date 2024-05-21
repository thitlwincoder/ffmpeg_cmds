import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Copy the input audio source unchanged to the output. This is mainly useful for testing purposes.
class Acopy extends Filter {
  /// Acopy
  Acopy();

  @override
  String get name => 'acopy';

  @override
  Map<String, dynamic> get options => {};
}
