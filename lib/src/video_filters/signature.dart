import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Signature extends Filter {
  /// Signature
  Signature();

  @override
  String get name => 'signature';

  @override
  Map<String, dynamic> get options => {};
}
