import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This filter uses the repeat_field flag from the Video ES headers and hard repeats fields based on its value.
class Repeatfields extends Filter {
  /// Repeatfields
  Repeatfields();

  @override
  String get name => 'repeatfields';

  @override
  Map<String, dynamic> get options => {};
}
